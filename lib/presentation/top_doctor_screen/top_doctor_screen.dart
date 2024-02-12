import '../top_doctor_screen/widgets/topdoctor_item_widget.dart';
import 'bloc/top_doctor_bloc.dart';
import 'models/top_doctor_model.dart';
import 'models/topdoctor_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dwtelehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TopDoctorScreen extends StatelessWidget {
  const TopDoctorScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TopDoctorBloc>(
        create: (context) =>
            TopDoctorBloc(TopDoctorState(topDoctorModelObj: TopDoctorModel()))
              ..add(TopDoctorInitialEvent()),
        child: TopDoctorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 23.v, right: 24.h),
                child: BlocSelector<TopDoctorBloc, TopDoctorState,
                        TopDoctorModel?>(
                    selector: (state) => state.topDoctorModelObj,
                    builder: (context, topDoctorModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16.v);
                          },
                          itemCount:
                              topDoctorModelObj?.topdoctorItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            TopdoctorItemModel model =
                                topDoctorModelObj?.topdoctorItemList[index] ??
                                    TopdoctorItemModel();
                            return TopdoctorItemWidget(model);
                          });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "lbl_top_doctor".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))
        ]);
  }
}
