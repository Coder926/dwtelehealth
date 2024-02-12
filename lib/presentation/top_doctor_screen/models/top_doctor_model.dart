// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'topdoctor_item_model.dart';

/// This class defines the variables used in the [top_doctor_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopDoctorModel extends Equatable {
  TopDoctorModel({this.topdoctorItemList = const []}) {}

  List<TopdoctorItemModel> topdoctorItemList;

  TopDoctorModel copyWith({List<TopdoctorItemModel>? topdoctorItemList}) {
    return TopDoctorModel(
      topdoctorItemList: topdoctorItemList ?? this.topdoctorItemList,
    );
  }

  @override
  List<Object?> get props => [topdoctorItemList];
}
