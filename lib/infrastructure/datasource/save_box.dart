// import 'package:hive/hive.dart';

import 'package:flutter_auth_app/domain/core/errors.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

abstract class SaveBox {
  Future<bool> delete<T, X>({required X key});
  Future<int> save<T>({required T object});

  Future<T?> read<T, X>({required X key});

  Future<List<T>> findAll<T>();
}

@LazySingleton(as: SaveBox)
class SaveBoxImpl implements SaveBox {
  SaveBoxImpl(this.isar);
  final Isar isar;

  @override
  Future<bool> delete<T, X>({required X key}) {
    if (X == int) {
      return isar.writeTxn(() => isar.collection<T>().delete(key as int));
    }
    throw AppError(
      actionDescription: 'required Type:key must be of type int',
      classLocation: this,
    );
  }

  @override
  Future<T?> read<T, X>({required X key}) {
    if (X == int) {
      return isar.collection<T>().get(key as int);
    }
    throw AppError(
      actionDescription: 'required Type:key must be of type int',
      classLocation: this,
    );
  }

  @override
  Future<int> save<T>({required T object}) async {
    return isar.writeTxn(
      () => isar.collection<T>().put(
            object,
          ),
    );
  }

  @override
  Future<List<T>> findAll<T>() {
    return isar.collection<T>().where().findAll();
  }
}
