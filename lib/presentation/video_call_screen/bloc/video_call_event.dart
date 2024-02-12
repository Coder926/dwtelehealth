// ignore_for_file: must_be_immutable

part of 'video_call_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoCall widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoCallEvent extends Equatable {}

/// Event that is dispatched when the VideoCall widget is first created.
class VideoCallInitialEvent extends VideoCallEvent {
  @override
  List<Object?> get props => [];
}
