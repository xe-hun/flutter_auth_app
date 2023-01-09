import 'package:dartz/dartz.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/domain/i_repository/i_prefs_repository.dart';
import 'package:flutter_auth_app/infrastructure/datasource/save_box.dart';
import 'package:flutter_auth_app/schema/prefs.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPrefsRepository)
class PrefsRepository implements IPrefsRepository {
  PrefsRepository(this.datasource);
  SaveBox datasource;

  @override
  Future<Either<StorageFailure, Prefs>> getAppPrefs() async {
    try {
      final result = await datasource.read<Prefs, int>(key: 0);
      if (result == null) {
        return const Left(StorageFailure.noItemInStorage());
      }
      return Right(result);
    } catch (e) {
      return Left(
          StorageFailure.storageGenericFailure(failedValue: e.toString()));
    }
  }

  @override
  Future<Either<StorageFailure, Unit>> saveAppPrefs(ThemeType themeType) async {
    try {
      await datasource.save(object: Prefs(themeType));
      return const Right(unit);
    } catch (e) {
      return Left(
          StorageFailure.storageGenericFailure(failedValue: e.toString()));
    }
  }
}
