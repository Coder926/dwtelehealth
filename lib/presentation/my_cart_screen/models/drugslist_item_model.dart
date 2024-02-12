import '../../../core/app_export.dart';

/// This class is used in the [drugslist_item_widget] screen.
class DrugslistItemModel {
  DrugslistItemModel({
    this.oBHCombi,
    this.oBHCombi1,
    this.measurement,
    this.one,
    this.price,
    this.id,
  }) {
    oBHCombi = oBHCombi ?? ImageConstant.imgHealthvitLLys50x50;
    oBHCombi1 = oBHCombi1 ?? "OBH Combi";
    measurement = measurement ?? "75ml";
    one = one ?? "1";
    price = price ?? "9.99";
    id = id ?? "";
  }

  String? oBHCombi;

  String? oBHCombi1;

  String? measurement;

  String? one;

  String? price;

  String? id;
}
