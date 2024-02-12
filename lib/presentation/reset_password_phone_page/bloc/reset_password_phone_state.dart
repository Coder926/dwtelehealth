// ignore_for_file: must_be_immutable

part of 'reset_password_phone_bloc.dart';

/// Represents the state of ResetPasswordPhone in the application.
class ResetPasswordPhoneState extends Equatable {
  ResetPasswordPhoneState({
    this.mobileNoController,
    this.resetPasswordPhoneModelObj,
  });

  TextEditingController? mobileNoController;

  ResetPasswordPhoneModel? resetPasswordPhoneModelObj;

  @override
  List<Object?> get props => [
        mobileNoController,
        resetPasswordPhoneModelObj,
      ];
  ResetPasswordPhoneState copyWith({
    TextEditingController? mobileNoController,
    ResetPasswordPhoneModel? resetPasswordPhoneModelObj,
  }) {
    return ResetPasswordPhoneState(
      mobileNoController: mobileNoController ?? this.mobileNoController,
      resetPasswordPhoneModelObj:
          resetPasswordPhoneModelObj ?? this.resetPasswordPhoneModelObj,
    );
  }
}
