import 'bloc/onboarding_two_bloc.dart';
import 'models/onboarding_two_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingTwoBloc>(
        create: (context) => OnboardingTwoBloc(
            OnboardingTwoState(onboardingTwoModelObj: OnboardingTwoModel()))
          ..add(OnboardingTwoInitialEvent()),
        child: OnboardingTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingTwoBloc, OnboardingTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                        theme.colorScheme.secondaryContainer,
                        theme.colorScheme.onError
                      ])),
                  child: SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.img7xm2,
                            height: 467.v,
                            width: 317.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 52.v)),
                        _buildOnboardingTwoNext(context)
                      ])))));
    });
  }

  /// Section Widget
  Widget _buildOnboardingTwoNext(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 31.v),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL64),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 230.h,
                          margin: EdgeInsets.only(left: 2.h, right: 58.h),
                          child: Text("msg_find_a_lot_of_specialist".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge!
                                  .copyWith(height: 1.50)))),
                  SizedBox(height: 10.v),
                  SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 4,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blue50,
                              dotHeight: 8.v,
                              dotWidth: 8.h))),
                  SizedBox(height: 54.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxtSkip(context);
                            },
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 20.v, bottom: 18.v),
                                child: Text("lbl_skip".tr,
                                    style:
                                        CustomTextStyles.titleSmallPrimary))),
                        CustomElevatedButton(
                            width: 145.h,
                            text: "lbl_next".tr,
                            onPressed: () {
                              onTapNext(context);
                            })
                      ]),
                  SizedBox(height: 4.v)
                ])));
  }

  /// Navigates to the onboardingFourScreen when the action is triggered.
  onTapTxtSkip(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingFourScreen,
    );
  }

  /// Navigates to the onboardingThreeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingThreeScreen,
    );
  }
}
