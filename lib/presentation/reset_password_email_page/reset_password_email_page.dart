import 'bloc/reset_password_email_bloc.dart';
import 'models/reset_password_email_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/core/utils/validation_functions.dart';
import 'package:dwtelehealth/widgets/custom_elevated_button.dart';
import 'package:dwtelehealth/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordEmailPage extends StatefulWidget {
  const ResetPasswordEmailPage({Key? key}) : super(key: key);

  @override
  ResetPasswordEmailPageState createState() => ResetPasswordEmailPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordEmailBloc>(
        create: (context) => ResetPasswordEmailBloc(ResetPasswordEmailState(
            resetPasswordEmailModelObj: ResetPasswordEmailModel()))
          ..add(ResetPasswordEmailInitialEvent()),
        child: ResetPasswordEmailPage());
  }
}

// ignore_for_file: must_be_immutable
class ResetPasswordEmailPageState extends State<ResetPasswordEmailPage>
    with AutomaticKeepAliveClientMixin<ResetPasswordEmailPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            decoration: AppDecoration.white,
                            child: Column(children: [
                              SizedBox(height: 24.v),
                              _buildEmailSection(context)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Column(children: [
          BlocSelector<ResetPasswordEmailBloc, ResetPasswordEmailState,
                  TextEditingController?>(
              selector: (state) => state.emailController,
              builder: (context, emailController) {
                return CustomTextFormField(
                    controller: emailController,
                    hintText: "lbl_xyz_gmail_com".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIconEmail,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 56.v),
                    suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 20.v, 24.h, 20.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIconCheck,
                            height: 16.adaptSize,
                            width: 16.adaptSize)),
                    suffixConstraints: BoxConstraints(maxHeight: 56.v),
                    validator: (value) {
                      if (value == null ||
                          (!isValidEmail(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_email".tr;
                      }
                      return null;
                    });
              }),
          SizedBox(height: 32.v),
          CustomElevatedButton(
              text: "lbl_send_otp".tr,
              onPressed: () {
                onTapSendOTP(context);
              })
        ]));
  }

  /// Navigates to the resetPasswordVerifyCodeScreen when the action is triggered.
  onTapSendOTP(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordVerifyCodeScreen,
    );
  }
}
