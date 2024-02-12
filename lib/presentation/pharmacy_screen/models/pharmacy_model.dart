// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'popularproductlist_item_model.dart';
import 'productonsalelist_item_model.dart';

/// This class defines the variables used in the [pharmacy_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PharmacyModel extends Equatable {
  PharmacyModel({
    this.popularproductlistItemList = const [],
    this.productonsalelistItemList = const [],
  }) {}

  List<PopularproductlistItemModel> popularproductlistItemList;

  List<ProductonsalelistItemModel> productonsalelistItemList;

  PharmacyModel copyWith({
    List<PopularproductlistItemModel>? popularproductlistItemList,
    List<ProductonsalelistItemModel>? productonsalelistItemList,
  }) {
    return PharmacyModel(
      popularproductlistItemList:
          popularproductlistItemList ?? this.popularproductlistItemList,
      productonsalelistItemList:
          productonsalelistItemList ?? this.productonsalelistItemList,
    );
  }

  @override
  List<Object?> get props =>
      [popularproductlistItemList, productonsalelistItemList];
}
