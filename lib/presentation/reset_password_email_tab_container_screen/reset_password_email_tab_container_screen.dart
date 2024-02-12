import 'bloc/reset_password_email_tab_container_bloc.dart';
import 'models/reset_password_email_tab_container_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/presentation/reset_password_email_page/reset_password_email_page.dart';
import 'package:dwtelehealth/presentation/reset_password_phone_page/reset_password_phone_page.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:dwtelehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ResetPasswordEmailTabContainerScreen extends StatefulWidget {
  const ResetPasswordEmailTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ResetPasswordEmailTabContainerScreenState createState() =>
      ResetPasswordEmailTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordEmailTabContainerBloc>(
      create: (context) => ResetPasswordEmailTabContainerBloc(
          ResetPasswordEmailTabContainerState(
        resetPasswordEmailTabContainerModelObj:
            ResetPasswordEmailTabContainerModel(),
      ))
        ..add(ResetPasswordEmailTabContainerInitialEvent()),
      child: ResetPasswordEmailTabContainerScreen(),
    );
  }
}

class ResetPasswordEmailTabContainerScreenState
    extends State<ResetPasswordEmailTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordEmailTabContainerBloc,
        ResetPasswordEmailTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 45.v),
                  _buildForgotPasswordTitle(context),
                  SizedBox(height: 21.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 525.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        ResetPasswordEmailPage.builder(context),
                        ResetPasswordPhonePage.builder(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeftOnprimary,
        margin: EdgeInsets.fromLTRB(32.h, 8.v, 319.h, 8.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildForgotPasswordTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_forgot_your_password".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 8.v),
          Container(
            width: 319.h,
            margin: EdgeInsets.only(right: 8.h),
            child: Text(
              "msg_enter_your_email2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMediumGray500.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 51.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray400,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.black900.withOpacity(0.05),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                0,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_email".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_phone".tr,
            ),
          ),
        ],
      ),
    );
  }
}
