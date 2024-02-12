// ignore_for_file: must_be_immutable

part of 'reset_password_verify_code_bloc.dart';

/// Represents the state of ResetPasswordVerifyCode in the application.
class ResetPasswordVerifyCodeState extends Equatable {
  ResetPasswordVerifyCodeState({
    this.otpController,
    this.resetPasswordVerifyCodeModelObj,
  });

  TextEditingController? otpController;

  ResetPasswordVerifyCodeModel? resetPasswordVerifyCodeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        resetPasswordVerifyCodeModelObj,
      ];
  ResetPasswordVerifyCodeState copyWith({
    TextEditingController? otpController,
    ResetPasswordVerifyCodeModel? resetPasswordVerifyCodeModelObj,
  }) {
    return ResetPasswordVerifyCodeState(
      otpController: otpController ?? this.otpController,
      resetPasswordVerifyCodeModelObj: resetPasswordVerifyCodeModelObj ??
          this.resetPasswordVerifyCodeModelObj,
    );
  }
}
