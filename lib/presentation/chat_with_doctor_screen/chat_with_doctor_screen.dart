import 'bloc/chat_with_doctor_bloc.dart';
import 'models/chat_with_doctor_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dwtelehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:dwtelehealth/widgets/custom_elevated_button.dart';
import 'package:dwtelehealth/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatWithDoctorScreen extends StatelessWidget {
  const ChatWithDoctorScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatWithDoctorBloc>(
        create: (context) => ChatWithDoctorBloc(
            ChatWithDoctorState(chatWithDoctorModelObj: ChatWithDoctorModel()))
          ..add(ChatWithDoctorInitialEvent()),
        child: ChatWithDoctorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 42.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7.v),
                      _buildConsultationStart(context),
                      SizedBox(height: 20.v),
                      _buildProfile(context,
                          doctorName: "msg_dr_marcus_horizon".tr,
                          time: "lbl_10_min_ago".tr),
                      SizedBox(height: 10.v),
                      Container(
                          margin: EdgeInsets.only(right: 122.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 7.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                Text("msg_hello_how_can_i".tr,
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 90.h),
                          child: _buildChatTile(context,
                              healthStatusText: "msg_i_have_suffering".tr)),
                      SizedBox(height: 15.v),
                      _buildProfile(context,
                          doctorName: "msg_dr_marcus_horizon".tr,
                          time: "lbl_5_min_ago".tr),
                      SizedBox(height: 10.v),
                      Container(
                          width: 221.h,
                          margin: EdgeInsets.only(right: 106.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 5.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.v),
                                Container(
                                    width: 186.h,
                                    margin: EdgeInsets.only(right: 9.h),
                                    child: Text("msg_ok_do_you_have".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.50)))
                              ])),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 90.h),
                          child: _buildChatTile(context,
                              healthStatusText: "msg_i_don_t_have_any".tr)),
                      SizedBox(height: 15.v),
                      _buildProfile(context,
                          doctorName: "msg_dr_marcus_horizon".tr,
                          time: "lbl_online".tr),
                      SizedBox(height: 10.v),
                      Container(
                          height: 22.v,
                          width: 58.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 8.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL5),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup141,
                              height: 5.v,
                              width: 32.h,
                              alignment: Alignment.bottomCenter))
                    ])),
            bottomNavigationBar: _buildEightyEight(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 46.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 22.h, top: 8.v, bottom: 8.v)),
        title: AppbarSubtitleThree(
            text: "msg_dr_marcus_horizon".tr,
            margin: EdgeInsets.only(left: 17.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUVideo,
              margin: EdgeInsets.only(left: 20.h, top: 8.v, right: 8.h),
              onTap: () {
                onTapUVideo(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUPhoneAlt,
              margin: EdgeInsets.only(left: 10.h, top: 8.v, right: 8.h),
              onTap: () {
                onTapUPhoneAlt(context);
              }),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.fromLTRB(16.h, 10.v, 28.h, 6.v))
        ]);
  }

  /// Section Widget
  Widget _buildConsultationStart(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 14.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("msg_consultion_start".tr,
                  style: CustomTextStyles.titleMediumPrimary),
              SizedBox(height: 8.v),
              Text("msg_you_can_consult".tr, style: theme.textTheme.labelLarge)
            ]));
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 26.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          BlocSelector<ChatWithDoctorBloc, ChatWithDoctorState,
                  TextEditingController?>(
              selector: (state) => state.messageController,
              builder: (context, messageController) {
                return CustomTextFormField(
                    width: 207.h,
                    controller: messageController,
                    hintText: "msg_type_message".tr,
                    hintStyle: CustomTextStyles.bodyMediumGray500,
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 15.v, 17.h, 15.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgAttach,
                            height: 20.adaptSize,
                            width: 20.adaptSize)),
                    suffixConstraints: BoxConstraints(maxHeight: 50.v),
                    contentPadding:
                        EdgeInsets.only(left: 19.h, top: 16.v, bottom: 16.v),
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
                    filled: true,
                    fillColor: appTheme.whiteA700);
              }),
          CustomElevatedButton(
              height: 50.v,
              width: 111.h,
              text: "lbl_send".tr,
              margin: EdgeInsets.only(left: 9.h),
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700SemiBold)
        ]));
  }

  /// Common widget
  Widget _buildProfile(
    BuildContext context, {
    required String doctorName,
    required String time,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgClose40x40,
          height: 40.adaptSize,
          width: 40.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 13.h, top: 3.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(doctorName,
                style: CustomTextStyles.titleSmallOnPrimary
                    .copyWith(color: theme.colorScheme.onPrimary)),
            SizedBox(height: 7.v),
            Text(time,
                style: theme.textTheme.labelMedium!
                    .copyWith(color: appTheme.gray500))
          ]))
    ]);
  }

  /// Common widget
  Widget _buildChatTile(
    BuildContext context, {
    required String healthStatusText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Container(
                      width: 165.h,
                      margin: EdgeInsets.only(left: 9.h, top: 4.v, bottom: 1.v),
                      child: Text(healthStatusText,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                              color: appTheme.whiteA700, height: 1.43)))),
              CustomImageView(
                  imagePath: ImageConstant.imgBasicCheckAllBig,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 36.h, top: 30.v))
            ]));
  }

  /// Navigates to the videoCallScreen when the action is triggered.
  onTapUVideo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.videoCallScreen,
    );
  }

  /// Navigates to the audioCallScreen when the action is triggered.
  onTapUPhoneAlt(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.audioCallScreen,
    );
  }
}
