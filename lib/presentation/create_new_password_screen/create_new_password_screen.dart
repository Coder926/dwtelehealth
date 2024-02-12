import 'bloc/create_new_password_bloc.dart';
import 'models/create_new_password_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/core/utils/validation_functions.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:dwtelehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:dwtelehealth/widgets/custom_elevated_button.dart';
import 'package:dwtelehealth/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateNewPasswordScreen extends StatelessWidget {
  CreateNewPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateNewPasswordBloc>(
        create: (context) => CreateNewPasswordBloc(CreateNewPasswordState(
            createNewPasswordModelObj: CreateNewPasswordModel()))
          ..add(CreateNewPasswordInitialEvent()),
        child: CreateNewPasswordScreen());
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
                                horizontal: 24.h, vertical: 42.v),
                            child: Column(children: [
                              _buildTitle(context),
                              SizedBox(height: 24.v),
                              BlocBuilder<CreateNewPasswordBloc,
                                      CreateNewPasswordState>(
                                  builder: (context, state) {
                                return CustomTextFormField(
                                    controller: state.newpasswordController,
                                    hintText: "msg_enter_new_password".tr,
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
                                          context
                                              .read<CreateNewPasswordBloc>()
                                              .add(
                                                  ChangePasswordVisibilityEvent(
                                                      value: !state
                                                          .isShowPassword));
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
                              SizedBox(height: 16.v),
                              BlocBuilder<CreateNewPasswordBloc,
                                      CreateNewPasswordState>(
                                  builder: (context, state) {
                                return CustomTextFormField(
                                    controller: state.confirmpasswordController,
                                    hintText: "msg_confirm_password".tr,
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
                                          context
                                              .read<CreateNewPasswordBloc>()
                                              .add(
                                                  ChangePasswordVisibilityEvent1(
                                                      value: !state
                                                          .isShowPassword1));
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
                                    obscureText: state.isShowPassword1);
                              }),
                              SizedBox(height: 24.v),
                              CustomElevatedButton(
                                  text: "lbl_create_password".tr,
                                  onPressed: () {
                                    onTapCreatePassword(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeftOnprimary,
            margin: EdgeInsets.fromLTRB(32.h, 8.v, 319.h, 8.v)));
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_create_new_password".tr, style: theme.textTheme.headlineSmall),
      SizedBox(height: 12.v),
      Text("msg_create_your_new".tr, style: CustomTextStyles.titleMediumGray500)
    ]);
  }

  onTapCreatePassword(BuildContext context) {
    // TODO: implement Actions
  }
}
