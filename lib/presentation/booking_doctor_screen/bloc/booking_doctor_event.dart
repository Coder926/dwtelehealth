// ignore_for_file: must_be_immutable

part of 'booking_doctor_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingDoctor widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingDoctorEvent extends Equatable {}

/// Event that is dispatched when the BookingDoctor widget is first created.
class BookingDoctorInitialEvent extends BookingDoctorEvent {
  @override
  List<Object?> get props => [];
}
