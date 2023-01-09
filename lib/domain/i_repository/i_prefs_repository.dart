import 'package:dartz/dartz.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/schema/prefs.dart' as prefs;

abstract class IPrefsRepository {
  Future<Either<StorageFailure, prefs.Prefs>> getAppPrefs();
  Future<Either<StorageFailure, Unit>> saveAppPrefs(prefs.ThemeType themeType);
}
