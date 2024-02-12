import '../models/profilelistsection_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilelistsectionItemWidget extends StatelessWidget {
  ProfilelistsectionItemWidget(
    this.profilelistsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfilelistsectionItemModel profilelistsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 61.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: profilelistsectionItemModelObj?.heartrate,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 6.v),
          Text(
            profilelistsectionItemModelObj.heartRate!,
            style: CustomTextStyles.labelMediumBlue50,
          ),
          SizedBox(height: 5.v),
          Text(
            profilelistsectionItemModelObj.bpm!,
            style: CustomTextStyles.titleMediumWhiteA700,
          ),
        ],
      ),
    );
  }
}
