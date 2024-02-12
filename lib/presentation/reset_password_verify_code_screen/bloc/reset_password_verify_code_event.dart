// ignore_for_file: must_be_immutable

part of 'reset_password_verify_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordVerifyCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordVerifyCodeEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordVerifyCode widget is first created.
class ResetPasswordVerifyCodeInitialEvent extends ResetPasswordVerifyCodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ResetPasswordVerifyCodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
