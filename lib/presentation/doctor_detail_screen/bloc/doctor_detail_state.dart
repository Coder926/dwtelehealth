// ignore_for_file: must_be_immutable

part of 'doctor_detail_bloc.dart';

/// Represents the state of DoctorDetail in the application.
class DoctorDetailState extends Equatable {
  DoctorDetailState({
    this.selectedDatesFromCalendar1,
    this.doctorDetailModelObj,
  });

  DoctorDetailModel? doctorDetailModelObj;

  DateTime? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        doctorDetailModelObj,
      ];
  DoctorDetailState copyWith({
    DateTime? selectedDatesFromCalendar1,
    DoctorDetailModel? doctorDetailModelObj,
  }) {
    return DoctorDetailState(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      doctorDetailModelObj: doctorDetailModelObj ?? this.doctorDetailModelObj,
    );
  }
}
