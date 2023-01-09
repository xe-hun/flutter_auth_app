abstract class IAppRepository {
  Future<Uri?> initializeDynamicLink();

  void onListenToDynamicLink(void Function(Uri dynamicLink) handleDynamicLink);
}
