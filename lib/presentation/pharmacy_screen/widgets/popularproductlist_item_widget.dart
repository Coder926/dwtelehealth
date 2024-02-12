import '../models/popularproductlist_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopularproductlistItemWidget extends StatelessWidget {
  PopularproductlistItemWidget(
    this.popularproductlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PopularproductlistItemModel popularproductlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 11.v),
              CustomImageView(
                imagePath: popularproductlistItemModelObj?.panadol,
                height: 58.v,
                width: 56.h,
                radius: BorderRadius.circular(
                  29.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  popularproductlistItemModelObj.panadol1!,
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  popularproductlistItemModelObj.pcs!,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    Text(
                      popularproductlistItemModelObj.price!,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.h),
                      child: CustomIconButton(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: popularproductlistItemModelObj?.close,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
