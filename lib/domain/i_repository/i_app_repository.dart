import 'package:flutter_auth_app/domain/core/failures.dart';

abstract class IAppRepository {
  Future<Uri?> initializeDynamicLink();

  void onListenToDynamicLink(void Function(Uri dynamicLink) handleDynamicLink,
      void Function(AuthFailure failure) onError);
}
