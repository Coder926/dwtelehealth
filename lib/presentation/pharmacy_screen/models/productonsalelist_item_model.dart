import '../../../core/app_export.dart';

/// This class is used in the [productonsalelist_item_widget] screen.
class ProductonsalelistItemModel {
  ProductonsalelistItemModel({
    this.oBHCombi,
    this.oBHCombi1,
    this.measurement,
    this.price,
    this.price1,
    this.close,
    this.id,
  }) {
    oBHCombi = oBHCombi ?? ImageConstant.imgCalciumLLysin;
    oBHCombi1 = oBHCombi1 ?? "OBH Combi";
    measurement = measurement ?? "75ml";
    price = price ?? "9.99";
    price1 = price1 ?? "10.99";
    close = close ?? ImageConstant.imgCloseWhiteA700;
    id = id ?? "";
  }

  String? oBHCombi;

  String? oBHCombi1;

  String? measurement;

  String? price;

  String? price1;

  String? close;

  String? id;
}
