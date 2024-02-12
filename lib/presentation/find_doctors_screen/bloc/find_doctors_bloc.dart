import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/finddoctors_item_model.dart';
import '../models/doctors_item_model.dart';
import 'package:dwtelehealth/presentation/find_doctors_screen/models/find_doctors_model.dart';
part 'find_doctors_event.dart';
part 'find_doctors_state.dart';

/// A bloc that manages the state of a FindDoctors according to the event that is dispatched to it.
class FindDoctorsBloc extends Bloc<FindDoctorsEvent, FindDoctorsState> {
  FindDoctorsBloc(FindDoctorsState initialState) : super(initialState) {
    on<FindDoctorsInitialEvent>(_onInitialize);
  }

  List<FinddoctorsItemModel> fillFinddoctorsItemList() {
    return [
      FinddoctorsItemModel(
          general: ImageConstant.imgIconDoctor, general1: "General"),
      FinddoctorsItemModel(
          general: ImageConstant.imgIconLungs, general1: "Lungs"),
      FinddoctorsItemModel(
          general: ImageConstant.imgIconDentist, general1: "Dentist"),
      FinddoctorsItemModel(
          general: ImageConstant.imgIconPsychiatrist, general1: "Psychiatrist"),
      FinddoctorsItemModel(
          general: ImageConstant.imgSearch, general1: "Covid-19"),
      FinddoctorsItemModel(
          general: ImageConstant.imgIconSyringe, general1: "Surgeon"),
      FinddoctorsItemModel(
          general: ImageConstant.imgIconCardiologist, general1: "Cardio")
    ];
  }

  List<DoctorsItemModel> fillDoctorsItemList() {
    return [
      DoctorsItemModel(
          drMarcus: ImageConstant.imgEllipse8864x64, drMarcus1: "Dr. Marcus"),
      DoctorsItemModel(
          drMarcus: ImageConstant.imgEllipse881, drMarcus1: "Dr. Maria"),
      DoctorsItemModel(
          drMarcus: ImageConstant.imgEllipse882, drMarcus1: "Dr. Stevi"),
      DoctorsItemModel(
          drMarcus: ImageConstant.imgRectangle961, drMarcus1: "Dr. Luke")
    ];
  }

  _onInitialize(
    FindDoctorsInitialEvent event,
    Emitter<FindDoctorsState> emit,
  ) async {
    emit(state.copyWith(
        searchController: TextEditingController(),
        chardiologistController: TextEditingController()));
    emit(state.copyWith(
        findDoctorsModelObj: state.findDoctorsModelObj?.copyWith(
            finddoctorsItemList: fillFinddoctorsItemList(),
            doctorsItemList: fillDoctorsItemList())));
  }
}
