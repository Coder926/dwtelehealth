// ignore_for_file: must_be_immutable

part of 'booking_doctor_bloc.dart';

/// Represents the state of BookingDoctor in the application.
class BookingDoctorState extends Equatable {
  BookingDoctorState({this.bookingDoctorModelObj});

  BookingDoctorModel? bookingDoctorModelObj;

  @override
  List<Object?> get props => [
        bookingDoctorModelObj,
      ];
  BookingDoctorState copyWith({BookingDoctorModel? bookingDoctorModelObj}) {
    return BookingDoctorState(
      bookingDoctorModelObj:
          bookingDoctorModelObj ?? this.bookingDoctorModelObj,
    );
  }
}
