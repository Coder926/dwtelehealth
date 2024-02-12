// ignore_for_file: must_be_immutable

part of 'reset_password_email_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordEmailTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordEmailTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordEmailTabContainer widget is first created.
class ResetPasswordEmailTabContainerInitialEvent
    extends ResetPasswordEmailTabContainerEvent {
  @override
  List<Object?> get props => [];
}
