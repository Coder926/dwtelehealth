// ignore_for_file: must_be_immutable

part of 'onboarding_four_bloc.dart';

/// Represents the state of OnboardingFour in the application.
class OnboardingFourState extends Equatable {
  OnboardingFourState({this.onboardingFourModelObj});

  OnboardingFourModel? onboardingFourModelObj;

  @override
  List<Object?> get props => [
        onboardingFourModelObj,
      ];
  OnboardingFourState copyWith({OnboardingFourModel? onboardingFourModelObj}) {
    return OnboardingFourState(
      onboardingFourModelObj:
          onboardingFourModelObj ?? this.onboardingFourModelObj,
    );
  }
}
