// ignore_for_file: must_be_immutable

part of 'message_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessageHistoryEvent extends Equatable {}

/// Event that is dispatched when the MessageHistory widget is first created.
class MessageHistoryInitialEvent extends MessageHistoryEvent {
  @override
  List<Object?> get props => [];
}
