import '../models/finddoctors_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FinddoctorsItemWidget extends StatelessWidget {
  FinddoctorsItemWidget(
    this.finddoctorsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FinddoctorsItemModel finddoctorsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.v,
          width: 64.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: finddoctorsItemModelObj?.general,
            height: 32.adaptSize,
            width: 32.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          finddoctorsItemModelObj.general1!,
          style: CustomTextStyles.bodyMediumBluegray400,
        ),
      ],
    );
  }
}
