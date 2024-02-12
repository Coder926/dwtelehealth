// ignore_for_file: must_be_immutable

part of 'audio_call_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AudioCall widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AudioCallEvent extends Equatable {}

/// Event that is dispatched when the AudioCall widget is first created.
class AudioCallInitialEvent extends AudioCallEvent {
  @override
  List<Object?> get props => [];
}
