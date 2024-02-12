// ignore_for_file: must_be_immutable

part of 'message_history_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageHistoryTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessageHistoryTabContainerEvent extends Equatable {}

/// Event that is dispatched when the MessageHistoryTabContainer widget is first created.
class MessageHistoryTabContainerInitialEvent
    extends MessageHistoryTabContainerEvent {
  @override
  List<Object?> get props => [];
}
