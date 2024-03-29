import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/core/utils/validation_functions.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dwtelehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:dwtelehealth/widgets/custom_elevated_button.dart';
import 'package:dwtelehealth/widgets/custom_outlined_button.dart';
import 'package:dwtelehealth/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dwtelehealth/domain/googleauth/google_auth_helper.dart';
import 'package:dwtelehealth/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 39.v),
                            child: Column(children: [
                              BlocSelector<LoginBloc, LoginState,
                                      TextEditingController?>(
                                  selector: (state) => state.emailController,
                                  builder: (context, emailController) {
                                    return CustomTextFormField(
                                        controller: emailController,
                                        hintText: "msg_enter_your_email".tr,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                24.h, 16.v, 16.h, 16.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCheckmark,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 56.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_email"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        contentPadding: EdgeInsets.only(
                                            top: 18.v,
                                            right: 30.h,
                                            bottom: 18.v));
                                  }),
                              SizedBox(height: 16.v),
                              BlocBuilder<LoginBloc, LoginState>(
                                  builder: (context, state) {
                                return CustomTextFormField(
                                    controller: state.passwordController,
                                    hintText: "msg_enter_your_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            24.h, 16.v, 16.h, 16.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocation,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 56.v),
                                    suffix: InkWell(
                                        onTap: () {
                                          context.read<LoginBloc>().add(
                                              ChangePasswordVisibilityEvent(
                                                  value:
                                                      !state.isShowPassword));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                30.h, 16.v, 24.h, 16.v),
                                            child: CustomImageView(
                                                imagePath: ImageConstant.imgEye,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize))),
                                    suffixConstraints:
                                        BoxConstraints(maxHeight: 56.v),
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "err_msg_please_enter_valid_password"
                                            .tr;
                                      }
                                      return null;
                                    },
                                    obscureText: state.isShowPassword);
                              }),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword(context);
                                      },
                                      child: Text("msg_forgot_password".tr,
                                          style: CustomTextStyles
                                              .titleSmallPrimary))),
                              SizedBox(height: 32.v),
                              CustomElevatedButton(
                                  text: "lbl_login".tr,
                                  onPressed: () {
                                    onTapLogin(context);
                                  }),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 48.h),
                                      child: Row(children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text(
                                                "msg_don_t_have_an_account".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumGray600)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSignUp(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text("lbl_sign_up".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallPrimarySemiBold)))
                                      ]))),
                              SizedBox(height: 34.v),
                              _buildDivider(context),
                              SizedBox(height: 29.v),
                              _buildSocial(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_login".tr));
  }

  /// Section Widget
  Widget _buildDivider(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
              child: SizedBox(width: 137.h, child: Divider())),
          Text("lbl_or".tr, style: theme.textTheme.bodyLarge),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
              child: SizedBox(width: 137.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildSocial(BuildContext context) {
    return Column(children: [
      CustomOutlinedButton(
          text: "msg_sign_in_with_google".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 30.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgGoogle,
                  height: 20.v,
                  width: 19.h)),
          onPressed: () {
            onTapSignInWithGoogle(context);
          }),
      SizedBox(height: 16.v),
      CustomOutlinedButton(
          text: "msg_sign_in_with_apple".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 30.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgApple,
                  height: 20.v,
                  width: 16.h))),
      SizedBox(height: 16.v),
      CustomOutlinedButton(
          text: "msg_sign_in_with_facebook".tr,
          onPressed: () {
            onTapSignInWithFacebook(context);
          })
    ]);
  }

  /// Navigates to the resetPasswordEmailTabContainerScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordEmailTabContainerScreen,
    );
  }

  onTapLogin(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }

  onTapSignInWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapSignInWithFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
