// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'finddoctors_item_model.dart';
import 'doctors_item_model.dart';

/// This class defines the variables used in the [find_doctors_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindDoctorsModel extends Equatable {
  FindDoctorsModel({
    this.finddoctorsItemList = const [],
    this.doctorsItemList = const [],
  }) {}

  List<FinddoctorsItemModel> finddoctorsItemList;

  List<DoctorsItemModel> doctorsItemList;

  FindDoctorsModel copyWith({
    List<FinddoctorsItemModel>? finddoctorsItemList,
    List<DoctorsItemModel>? doctorsItemList,
  }) {
    return FindDoctorsModel(
      finddoctorsItemList: finddoctorsItemList ?? this.finddoctorsItemList,
      doctorsItemList: doctorsItemList ?? this.doctorsItemList,
    );
  }

  @override
  List<Object?> get props => [finddoctorsItemList, doctorsItemList];
}
