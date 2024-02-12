import '../models/am_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmItemWidget extends StatelessWidget {
  AmItemWidget(
    this.amItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  AmItemModel amItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        amItemModelObj.am!,
        style: TextStyle(
          color: (amItemModelObj.isSelected ?? false)
              ? appTheme.whiteA700
              : appTheme.gray500,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (amItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.whiteA700,
      selectedColor: theme.colorScheme.primary,
      shape: (amItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                15.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray300,
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                15.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
