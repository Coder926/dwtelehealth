import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dwtelehealth/presentation/reset_password_email_tab_container_screen/models/reset_password_email_tab_container_model.dart';
part 'reset_password_email_tab_container_event.dart';
part 'reset_password_email_tab_container_state.dart';

/// A bloc that manages the state of a ResetPasswordEmailTabContainer according to the event that is dispatched to it.
class ResetPasswordEmailTabContainerBloc extends Bloc<
    ResetPasswordEmailTabContainerEvent, ResetPasswordEmailTabContainerState> {
  ResetPasswordEmailTabContainerBloc(
      ResetPasswordEmailTabContainerState initialState)
      : super(initialState) {
    on<ResetPasswordEmailTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordEmailTabContainerInitialEvent event,
    Emitter<ResetPasswordEmailTabContainerState> emit,
  ) async {}
}
