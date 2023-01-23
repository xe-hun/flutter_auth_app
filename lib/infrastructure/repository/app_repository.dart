import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/domain/i_repository/i_app_repository.dart';
import 'package:flutter_auth_app/infrastructure/datasource/remote_datasource.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAppRepository)
class AppRepository implements IAppRepository {
  AppRepository(this.remoteDatasource);
  RemoteDatasource remoteDatasource;

  @override
  Future<Uri?> initializeDynamicLink() async {
    remoteDatasource.initializeDynamicLink();
    return null;
  }

  // void onListenToDynamicLink(void Function(Uri dynamicLink, void Function(AuthFailure failure ) onError)) {
  // }
  @override
  void onListenToDynamicLink(void Function(Uri dynamicLink) handleDynamicLink,
      void Function(AuthFailure failure) onError) {
    remoteDatasource.onListenToDynamicLink(handleDynamicLink, onError);
  }
}
