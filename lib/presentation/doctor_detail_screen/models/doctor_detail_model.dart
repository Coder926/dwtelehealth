// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'am_item_model.dart';

/// This class defines the variables used in the [doctor_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DoctorDetailModel extends Equatable {
  DoctorDetailModel({this.amItemList = const []}) {}

  List<AmItemModel> amItemList;

  DoctorDetailModel copyWith({List<AmItemModel>? amItemList}) {
    return DoctorDetailModel(
      amItemList: amItemList ?? this.amItemList,
    );
  }

  @override
  List<Object?> get props => [amItemList];
}
