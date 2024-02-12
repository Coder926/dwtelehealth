import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dwtelehealth/presentation/reset_password_verify_code_screen/models/reset_password_verify_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'reset_password_verify_code_event.dart';
part 'reset_password_verify_code_state.dart';

/// A bloc that manages the state of a ResetPasswordVerifyCode according to the event that is dispatched to it.
class ResetPasswordVerifyCodeBloc
    extends Bloc<ResetPasswordVerifyCodeEvent, ResetPasswordVerifyCodeState>
    with CodeAutoFill {
  ResetPasswordVerifyCodeBloc(ResetPasswordVerifyCodeState initialState)
      : super(initialState) {
    on<ResetPasswordVerifyCodeInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<ResetPasswordVerifyCodeState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    ResetPasswordVerifyCodeInitialEvent event,
    Emitter<ResetPasswordVerifyCodeState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
