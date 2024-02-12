import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dwtelehealth/presentation/booking_doctor_screen/models/booking_doctor_model.dart';
part 'booking_doctor_event.dart';
part 'booking_doctor_state.dart';

/// A bloc that manages the state of a BookingDoctor according to the event that is dispatched to it.
class BookingDoctorBloc extends Bloc<BookingDoctorEvent, BookingDoctorState> {
  BookingDoctorBloc(BookingDoctorState initialState) : super(initialState) {
    on<BookingDoctorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingDoctorInitialEvent event,
    Emitter<BookingDoctorState> emit,
  ) async {
    // TODO: implement Actions
  }
}
