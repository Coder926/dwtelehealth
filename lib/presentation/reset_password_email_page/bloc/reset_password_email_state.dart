// ignore_for_file: must_be_immutable

part of 'reset_password_email_bloc.dart';

/// Represents the state of ResetPasswordEmail in the application.
class ResetPasswordEmailState extends Equatable {
  ResetPasswordEmailState({
    this.emailController,
    this.resetPasswordEmailModelObj,
  });

  TextEditingController? emailController;

  ResetPasswordEmailModel? resetPasswordEmailModelObj;

  @override
  List<Object?> get props => [
        emailController,
        resetPasswordEmailModelObj,
      ];
  ResetPasswordEmailState copyWith({
    TextEditingController? emailController,
    ResetPasswordEmailModel? resetPasswordEmailModelObj,
  }) {
    return ResetPasswordEmailState(
      emailController: emailController ?? this.emailController,
      resetPasswordEmailModelObj:
          resetPasswordEmailModelObj ?? this.resetPasswordEmailModelObj,
    );
  }
}
