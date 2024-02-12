import 'bloc/audio_call_bloc.dart';
import 'models/audio_call_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AudioCallScreen extends StatelessWidget {
  const AudioCallScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AudioCallBloc>(
      create: (context) => AudioCallBloc(AudioCallState(
        audioCallModelObj: AudioCallModel(),
      ))
        ..add(AudioCallInitialEvent()),
      child: AudioCallScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioCallBloc, AudioCallState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup194,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 50.v),
                child: Column(
                  children: [
                    Spacer(
                      flex: 61,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage10,
                      height: 115.adaptSize,
                      width: 115.adaptSize,
                      radius: BorderRadius.circular(
                        57.h,
                      ),
                    ),
                    Spacer(
                      flex: 38,
                    ),
                    Text(
                      "lbl_00_05_24".tr,
                      style: CustomTextStyles.titleSmallWhiteA700,
                    ),
                    SizedBox(height: 21.v),
                    _buildCallActions(context),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildSwipeBackToMenu(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCallActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 52.adaptSize,
          width: 52.adaptSize,
          padding: EdgeInsets.all(14.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgUpload,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.h),
          child: CustomIconButton(
            height: 52.adaptSize,
            width: 52.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillRed,
            child: CustomImageView(
              imagePath: ImageConstant.imgCall,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.h),
          child: CustomIconButton(
            height: 52.adaptSize,
            width: 52.adaptSize,
            padding: EdgeInsets.all(14.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgMenu,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSwipeBackToMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 21.v),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "msg_swipe_back_to_menu".tr,
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
