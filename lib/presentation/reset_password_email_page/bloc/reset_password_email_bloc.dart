import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dwtelehealth/presentation/reset_password_email_page/models/reset_password_email_model.dart';
part 'reset_password_email_event.dart';
part 'reset_password_email_state.dart';

/// A bloc that manages the state of a ResetPasswordEmail according to the event that is dispatched to it.
class ResetPasswordEmailBloc
    extends Bloc<ResetPasswordEmailEvent, ResetPasswordEmailState> {
  ResetPasswordEmailBloc(ResetPasswordEmailState initialState)
      : super(initialState) {
    on<ResetPasswordEmailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordEmailInitialEvent event,
    Emitter<ResetPasswordEmailState> emit,
  ) async {
    emit(state.copyWith(emailController: TextEditingController()));
  }
}
