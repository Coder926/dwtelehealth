import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profilelistsection_item_model.dart';
import 'package:dwtelehealth/presentation/profile_page/models/profile_model.dart';
part 'profile_event.dart';
part 'profile_state.dart';

/// A bloc that manages the state of a Profile according to the event that is dispatched to it.
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
            profilelistsectionItemList:
                fillProfilelistsectionItemList()))); // TODO: implement Actions
  }

  List<ProfilelistsectionItemModel> fillProfilelistsectionItemList() {
    return [
      ProfilelistsectionItemModel(
          heartrate: ImageConstant.imgTelevision,
          heartRate: "Heart rate",
          bpm: "215bpm"),
      ProfilelistsectionItemModel(
          heartrate: ImageConstant.imgSettingsWhiteA700,
          heartRate: "Calories",
          bpm: "756cal"),
      ProfilelistsectionItemModel(
          heartrate: ImageConstant.imgThumbsUpWhiteA700,
          heartRate: "Weight",
          bpm: "103lbs")
    ];
  }
}
