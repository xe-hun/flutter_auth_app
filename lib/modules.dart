import 'package:flutter_auth_app/schema/prefs.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<Isar> get isar => Isar.open([PrefsSchema]);
}