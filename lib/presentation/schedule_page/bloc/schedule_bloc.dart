import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/schedule_item_model.dart';
import 'package:dwtelehealth/presentation/schedule_page/models/schedule_model.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

/// A bloc that manages the state of a Schedule according to the event that is dispatched to it.
class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  ScheduleBloc(ScheduleState initialState) : super(initialState) {
    on<ScheduleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScheduleInitialEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(state.copyWith(
        scheduleModelObj: state.scheduleModelObj?.copyWith(
      scheduleItemList: fillScheduleItemList(),
    )));
  }

  List<ScheduleItemModel> fillScheduleItemList() {
    return [
      ScheduleItemModel(
          drMarcusHorizon: "Dr. Marcus Horizon",
          chardiologist: "Chardiologist",
          drMarcusHorizon1: ImageConstant.imgClose40x40,
          date: "26/06/2022",
          time: "10:30 AM",
          confirmed: "Confirmed"),
      ScheduleItemModel(
          drMarcusHorizon: "Dr. Alysa Hana",
          chardiologist: "Psikeater",
          drMarcusHorizon1: ImageConstant.imgPlay)
    ];
  }
}
