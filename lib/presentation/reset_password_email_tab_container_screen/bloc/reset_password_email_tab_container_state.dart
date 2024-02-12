// ignore_for_file: must_be_immutable

part of 'reset_password_email_tab_container_bloc.dart';

/// Represents the state of ResetPasswordEmailTabContainer in the application.
class ResetPasswordEmailTabContainerState extends Equatable {
  ResetPasswordEmailTabContainerState(
      {this.resetPasswordEmailTabContainerModelObj});

  ResetPasswordEmailTabContainerModel? resetPasswordEmailTabContainerModelObj;

  @override
  List<Object?> get props => [
        resetPasswordEmailTabContainerModelObj,
      ];
  ResetPasswordEmailTabContainerState copyWith(
      {ResetPasswordEmailTabContainerModel?
          resetPasswordEmailTabContainerModelObj}) {
    return ResetPasswordEmailTabContainerState(
      resetPasswordEmailTabContainerModelObj:
          resetPasswordEmailTabContainerModelObj ??
              this.resetPasswordEmailTabContainerModelObj,
    );
  }
}
