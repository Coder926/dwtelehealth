// ignore_for_file: must_be_immutable

part of 'reset_password_phone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordPhone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordPhoneEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordPhone widget is first created.
class ResetPasswordPhoneInitialEvent extends ResetPasswordPhoneEvent {
  @override
  List<Object?> get props => [];
}
