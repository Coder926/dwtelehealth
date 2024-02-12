// ignore_for_file: must_be_immutable

part of 'reset_password_email_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordEmail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordEmailEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordEmail widget is first created.
class ResetPasswordEmailInitialEvent extends ResetPasswordEmailEvent {
  @override
  List<Object?> get props => [];
}
