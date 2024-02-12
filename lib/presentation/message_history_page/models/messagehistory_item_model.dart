import '../../../core/app_export.dart';

/// This class is used in the [messagehistory_item_widget] screen.
class MessagehistoryItemModel {
  MessagehistoryItemModel({
    this.drMarcusHorizon,
    this.drMarcusHorizon1,
    this.iDonTHaveAny,
    this.oneThousandTwentyFour,
    this.widget,
    this.id,
  }) {
    drMarcusHorizon = drMarcusHorizon ?? ImageConstant.imgClose40x40;
    drMarcusHorizon1 = drMarcusHorizon1 ?? "Dr. Marcus Horizon";
    iDonTHaveAny = iDonTHaveAny ?? "I don,t have any fever, but headchace...";
    oneThousandTwentyFour = oneThousandTwentyFour ?? "10.24";
    widget = widget ?? "1";
    id = id ?? "";
  }

  String? drMarcusHorizon;

  String? drMarcusHorizon1;

  String? iDonTHaveAny;

  String? oneThousandTwentyFour;

  String? widget;

  String? id;
}
