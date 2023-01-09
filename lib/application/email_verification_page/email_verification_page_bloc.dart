import 'package:bloc/bloc.dart';
import 'package:flutter_auth_app/domain/i_repository/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'email_verification_page_event.dart';
part 'email_verification_page_state.dart';
part 'email_verification_page_bloc.freezed.dart';

@injectable
class EmailVerificationPageBloc
    extends Bloc<EmailVerificationPageEvent, EmailVerificationPageState> {
  EmailVerificationPageBloc(this.authRepository)
      : super(const EmailVerificationPageState.initial()) {
    on<EmailVerificationPageEvent>((event, emit) async {
      await event.map(
          started: (e) {},
          logout: (e) async {
            (await authRepository.logout())
                .fold((l) => null, (r) => e.onLogout());
          });
    });
  }
  IAuthRepository authRepository;
}
