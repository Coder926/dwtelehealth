// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.nameEditTextController,
    this.emailEditTextController,
    this.passwordEditTextController,
    this.isShowPassword = true,
    this.agreeCheckBox = false,
    this.signUpModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? passwordEditTextController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool agreeCheckBox;

  @override
  List<Object?> get props => [
        nameEditTextController,
        emailEditTextController,
        passwordEditTextController,
        isShowPassword,
        agreeCheckBox,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? passwordEditTextController,
    bool? isShowPassword,
    bool? agreeCheckBox,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      agreeCheckBox: agreeCheckBox ?? this.agreeCheckBox,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
