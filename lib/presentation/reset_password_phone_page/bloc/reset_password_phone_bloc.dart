import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dwtelehealth/presentation/reset_password_phone_page/models/reset_password_phone_model.dart';
part 'reset_password_phone_event.dart';
part 'reset_password_phone_state.dart';

/// A bloc that manages the state of a ResetPasswordPhone according to the event that is dispatched to it.
class ResetPasswordPhoneBloc
    extends Bloc<ResetPasswordPhoneEvent, ResetPasswordPhoneState> {
  ResetPasswordPhoneBloc(ResetPasswordPhoneState initialState)
      : super(initialState) {
    on<ResetPasswordPhoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordPhoneInitialEvent event,
    Emitter<ResetPasswordPhoneState> emit,
  ) async {
    emit(state.copyWith(mobileNoController: TextEditingController()));
  }
}
