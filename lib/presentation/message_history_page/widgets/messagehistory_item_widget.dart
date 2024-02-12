import '../models/messagehistory_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessagehistoryItemWidget extends StatelessWidget {
  MessagehistoryItemWidget(
    this.messagehistoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessagehistoryItemModel messagehistoryItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: messagehistoryItemModelObj?.drMarcusHorizon,
          height: 50.adaptSize,
          width: 50.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 7.v,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messagehistoryItemModelObj.drMarcusHorizon1!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                messagehistoryItemModelObj.iDonTHaveAny!,
                style: CustomTextStyles.bodySmallBluegray400,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 28.h,
            top: 11.v,
            bottom: 7.v,
          ),
          child: Column(
            children: [
              Text(
                messagehistoryItemModelObj.oneThousandTwentyFour!,
                style: CustomTextStyles.bodySmallBluegray700,
              ),
              SizedBox(height: 3.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 13.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    messagehistoryItemModelObj.widget!,
                    style: CustomTextStyles.labelSmallInterWhiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
