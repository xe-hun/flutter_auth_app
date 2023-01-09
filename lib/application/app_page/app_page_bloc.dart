import 'package:bloc/bloc.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/domain/i_repository/i_auth_repository.dart';
import 'package:flutter_auth_app/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_page_event.dart';
part 'app_page_state.dart';
part 'app_page_bloc.freezed.dart';

@injectable
class AppPageBloc extends Bloc<AppPageEvent, AppPageState> {
  AppPageBloc(this.authRepository) : super(const AppPageState.initial()) {
    on<AppPageEvent>((event, emit) async {
      await event.map(started: (e) {
        emit(
          AppPageState.idle(userDetails: authRepository.getUser!),
        );
      }, logout: (e) async {
        emit(
          AppPageState.idle(
              isLoading: true, userDetails: authRepository.getUser!),
        );

        (await authRepository.logout()).fold((l) {
          final errorMessage = _getErrorMessage(l);
          emit(AppPageState.idle(
              errorMessage: errorMessage,
              userDetails: authRepository.getUser!));
        }, (r) => e.onLogout());
      });
    });
  }
  IAuthRepository authRepository;

  String? _getErrorMessage(AuthFailure l) {
    return l.whenOrNull(
        networkFailure: () => 'Network failure',
        authGenericFailure: (value) => 'Their was an Error!');
  }
}
