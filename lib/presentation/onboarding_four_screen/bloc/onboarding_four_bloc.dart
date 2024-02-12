import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dwtelehealth/presentation/onboarding_four_screen/models/onboarding_four_model.dart';
part 'onboarding_four_event.dart';
part 'onboarding_four_state.dart';

/// A bloc that manages the state of a OnboardingFour according to the event that is dispatched to it.
class OnboardingFourBloc
    extends Bloc<OnboardingFourEvent, OnboardingFourState> {
  OnboardingFourBloc(OnboardingFourState initialState) : super(initialState) {
    on<OnboardingFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingFourInitialEvent event,
    Emitter<OnboardingFourState> emit,
  ) async {}
}
