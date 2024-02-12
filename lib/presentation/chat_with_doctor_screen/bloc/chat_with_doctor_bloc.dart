import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dwtelehealth/presentation/chat_with_doctor_screen/models/chat_with_doctor_model.dart';
part 'chat_with_doctor_event.dart';
part 'chat_with_doctor_state.dart';

/// A bloc that manages the state of a ChatWithDoctor according to the event that is dispatched to it.
class ChatWithDoctorBloc
    extends Bloc<ChatWithDoctorEvent, ChatWithDoctorState> {
  ChatWithDoctorBloc(ChatWithDoctorState initialState) : super(initialState) {
    on<ChatWithDoctorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatWithDoctorInitialEvent event,
    Emitter<ChatWithDoctorState> emit,
  ) async {
    emit(state.copyWith(messageController: TextEditingController()));
  }
}
