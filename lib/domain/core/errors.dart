// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppError extends Error {
  AppError({
    this.errorObject,
    required this.actionDescription,
    required this.classLocation,
  });

  final Object? errorObject;
  final String actionDescription;
  final Object classLocation;

  @override
  String toString() =>
      'AppError(errorObject: $errorObject, actionDescription: $actionDescription, classLocation: $classLocation)';
}
