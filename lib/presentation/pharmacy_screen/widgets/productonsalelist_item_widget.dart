import '../models/productonsalelist_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductonsalelistItemWidget extends StatelessWidget {
  ProductonsalelistItemWidget(
    this.productonsalelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductonsalelistItemModel productonsalelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: productonsalelistItemModelObj?.oBHCombi,
                height: 68.v,
                width: 66.h,
                radius: BorderRadius.circular(
                  34.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 9.v),
              Text(
                productonsalelistItemModelObj.oBHCombi1!,
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
              SizedBox(height: 7.v),
              Text(
                productonsalelistItemModelObj.measurement!,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 2.v),
              Row(
                children: [
                  Container(
                    height: 17.v,
                    width: 74.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 71.h,
                            margin: EdgeInsets.only(right: 3.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  productonsalelistItemModelObj.price!,
                                  style: CustomTextStyles.titleSmallBlack900,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.v),
                                  child: Text(
                                    productonsalelistItemModelObj.price1!,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 1.v,
                            width: 29.h,
                            margin: EdgeInsets.only(bottom: 5.v),
                            decoration: BoxDecoration(
                              color: appTheme.gray600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: CustomIconButton(
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      child: CustomImageView(
                        imagePath: productonsalelistItemModelObj?.close,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
