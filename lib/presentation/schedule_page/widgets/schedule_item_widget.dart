import '../models/schedule_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScheduleItemWidget extends StatelessWidget {
  ScheduleItemWidget(
    this.scheduleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ScheduleItemModel scheduleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        scheduleItemModelObj.drMarcusHorizon!,
                        style: CustomTextStyles.titleMedium18,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        scheduleItemModelObj.chardiologist!,
                        style: CustomTextStyles.labelLargeBluegray400,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: scheduleItemModelObj?.drMarcusHorizon1,
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(right: 47.h),
            child: Row(
              children: [
                SizedBox(
                  width: 89.h,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCalendarBlueGray700,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          scheduleItemModelObj.date!,
                          style: CustomTextStyles.labelLargeBluegray700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 70.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          scheduleItemModelObj.time!,
                          style: CustomTextStyles.labelLargeBluegray700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 70.h,
                  margin: EdgeInsets.only(left: 17.h),
                  child: Row(
                    children: [
                      Container(
                        height: 6.adaptSize,
                        width: 6.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                        decoration: BoxDecoration(
                          color: appTheme.green600,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text(
                          scheduleItemModelObj.confirmed!,
                          style: CustomTextStyles.labelLargeBluegray700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  height: 46.v,
                  text: "lbl_cancel".tr,
                  margin: EdgeInsets.only(right: 7.h),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.titleSmallBluegray700,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 46.v,
                  text: "lbl_reschedule".tr,
                  margin: EdgeInsets.only(left: 7.h),
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: CustomTextStyles.titleSmallPrimarySemiBold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
