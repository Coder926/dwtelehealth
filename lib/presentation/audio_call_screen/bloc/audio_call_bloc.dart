import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dwtelehealth/presentation/audio_call_screen/models/audio_call_model.dart';
part 'audio_call_event.dart';
part 'audio_call_state.dart';

/// A bloc that manages the state of a AudioCall according to the event that is dispatched to it.
class AudioCallBloc extends Bloc<AudioCallEvent, AudioCallState> {
  AudioCallBloc(AudioCallState initialState) : super(initialState) {
    on<AudioCallInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AudioCallInitialEvent event,
    Emitter<AudioCallState> emit,
  ) async {}
}
