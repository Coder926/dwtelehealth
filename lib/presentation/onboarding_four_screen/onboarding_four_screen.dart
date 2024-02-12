import 'bloc/onboarding_four_bloc.dart';
import 'models/onboarding_four_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/custom_elevated_button.dart';
import 'package:dwtelehealth/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class OnboardingFourScreen extends StatelessWidget {
  const OnboardingFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingFourBloc>(
        create: (context) => OnboardingFourBloc(
            OnboardingFourState(onboardingFourModelObj: OnboardingFourModel()))
          ..add(OnboardingFourInitialEvent()),
        child: OnboardingFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingFourBloc, OnboardingFourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 60.v),
                  child: Column(children: [
                    Spacer(flex: 40),
                    _buildGetStartedSection(context),
                    Spacer(flex: 59),
                    CustomElevatedButton(
                        text: "lbl_login".tr,
                        onPressed: () {
                          onTapLogin(context);
                        }),
                    SizedBox(height: 16.v),
                    CustomOutlinedButton(
                        text: "lbl_sign_up".tr,
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                        onPressed: () {
                          onTapSignUp(context);
                        })
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildGetStartedSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 41.h),
        child: Column(children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp, height: 66.v, width: 59.h),
          SizedBox(height: 5.v),
          Text("lbl_helthio".tr, style: CustomTextStyles.headlineSmallPrimary),
          SizedBox(height: 38.v),
          Text("msg_let_s_get_started".tr,
              style: theme.textTheme.headlineSmall),
          SizedBox(height: 7.v),
          SizedBox(
              width: 244.h,
              child: Text("msg_login_to_enjoy_the".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumGray600
                      .copyWith(height: 1.50)))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
