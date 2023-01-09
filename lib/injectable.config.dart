// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart' as _i4;
import 'package:flutter_auth_app/application/app_page/app_page_bloc.dart'
    as _i16;
import 'package:flutter_auth_app/application/auth_page/auth_page_bloc.dart'
    as _i17;
import 'package:flutter_auth_app/application/email_verification_page/email_verification_page_bloc.dart'
    as _i18;
import 'package:flutter_auth_app/application/init_page/init_widget_model.dart'
    as _i19;
import 'package:flutter_auth_app/application/theme/theme_bloc.dart' as _i14;
import 'package:flutter_auth_app/domain/i_repository/i_app_repository.dart'
    as _i8;
import 'package:flutter_auth_app/domain/i_repository/i_auth_repository.dart'
    as _i10;
import 'package:flutter_auth_app/domain/i_repository/i_prefs_repository.dart'
    as _i12;
import 'package:flutter_auth_app/infrastructure/datasource/remote_datasource.dart'
    as _i6;
import 'package:flutter_auth_app/infrastructure/datasource/save_box.dart'
    as _i7;
import 'package:flutter_auth_app/infrastructure/repository/app_repository.dart'
    as _i9;
import 'package:flutter_auth_app/infrastructure/repository/auth_repository.dart'
    as _i11;
import 'package:flutter_auth_app/infrastructure/repository/prefs_repository.dart'
    as _i13;
import 'package:flutter_auth_app/router/app_guard.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;

import 'modules.dart' as _i20;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.FirebaseAuth>(registerModule.firebaseAuth);
  gh.singleton<_i4.FirebaseDynamicLinks>(registerModule.firebaseDynamicLink);
  await gh.singletonAsync<_i5.Isar>(
    () => registerModule.isar,
    preResolve: true,
  );
  gh.singleton<_i6.RemoteDatasource>(_i6.RemoteDatasourceImpl(
    gh<_i3.FirebaseAuth>(),
    gh<_i4.FirebaseDynamicLinks>(),
  ));
  gh.lazySingleton<_i7.SaveBox>(() => _i7.SaveBoxImpl(gh<_i5.Isar>()));
  gh.lazySingleton<_i8.IAppRepository>(
      () => _i9.AppRepository(gh<_i6.RemoteDatasource>()));
  gh.lazySingleton<_i10.IAuthRepository>(
      () => _i11.AuthRepository(datasource: gh<_i6.RemoteDatasource>()));
  gh.lazySingleton<_i12.IPrefsRepository>(
      () => _i13.PrefsRepository(gh<_i7.SaveBox>()));
  gh.factory<_i14.ThemeBloc>(() => _i14.ThemeBloc(gh<_i12.IPrefsRepository>()));
  gh.lazySingleton<_i15.AppGuard>(
      () => _i15.AppGuard(gh<_i10.IAuthRepository>()));
  gh.factory<_i16.AppPageBloc>(
      () => _i16.AppPageBloc(gh<_i10.IAuthRepository>()));
  gh.factory<_i17.AuthPageBloc>(
      () => _i17.AuthPageBloc(gh<_i10.IAuthRepository>()));
  gh.factory<_i18.EmailVerificationPageBloc>(
      () => _i18.EmailVerificationPageBloc(gh<_i10.IAuthRepository>()));
  gh.factory<_i19.InitWidgetModel>(() => _i19.InitWidgetModel(
        gh<_i8.IAppRepository>(),
        gh<_i10.IAuthRepository>(),
        gh<_i14.ThemeBloc>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i20.RegisterModule {}
