import '../models/doctors_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorsItemWidget extends StatelessWidget {
  DoctorsItemWidget(
    this.doctorsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DoctorsItemModel doctorsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: doctorsItemModelObj?.drMarcus,
            height: 64.adaptSize,
            width: 64.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            doctorsItemModelObj.drMarcus1!,
            style: CustomTextStyles.labelLargeErrorContainer,
          ),
        ],
      ),
    );
  }
}
