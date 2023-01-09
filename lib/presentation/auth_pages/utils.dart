import 'package:flutter_auth_app/application/auth_page/auth_page_bloc.dart';

clearTextControllers(AuthPageBloc authPageBloc) {
  authPageBloc.emailTEC.clear();
  authPageBloc.passwordTEC.clear();
  authPageBloc.displayNameTEC.clear();
}
