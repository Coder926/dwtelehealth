// ignore_for_file: must_be_immutable

part of 'chat_with_doctor_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatWithDoctor widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatWithDoctorEvent extends Equatable {}

/// Event that is dispatched when the ChatWithDoctor widget is first created.
class ChatWithDoctorInitialEvent extends ChatWithDoctorEvent {
  @override
  List<Object?> get props => [];
}
