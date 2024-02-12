// ignore_for_file: must_be_immutable

part of 'top_doctor_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TopDoctor widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TopDoctorEvent extends Equatable {}

/// Event that is dispatched when the TopDoctor widget is first created.
class TopDoctorInitialEvent extends TopDoctorEvent {
  @override
  List<Object?> get props => [];
}
