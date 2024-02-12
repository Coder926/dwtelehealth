// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipview_item_widget] screen.
class ChipviewItemModel extends Equatable {
  ChipviewItemModel({
    this.covidNineteen,
    this.isSelected,
  }) {
    covidNineteen = covidNineteen ?? "Covid-19";
    isSelected = isSelected ?? false;
  }

  String? covidNineteen;

  bool? isSelected;

  ChipviewItemModel copyWith({
    String? covidNineteen,
    bool? isSelected,
  }) {
    return ChipviewItemModel(
      covidNineteen: covidNineteen ?? this.covidNineteen,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [covidNineteen, isSelected];
}
