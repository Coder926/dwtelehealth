import '../pharmacy_screen/widgets/popularproductlist_item_widget.dart';
import '../pharmacy_screen/widgets/productonsalelist_item_widget.dart';
import 'bloc/pharmacy_bloc.dart';
import 'dart:async';
import 'models/pharmacy_model.dart';
import 'models/popularproductlist_item_model.dart';
import 'models/productonsalelist_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dwtelehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:dwtelehealth/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore_for_file: must_be_immutable
class PharmacyScreen extends StatelessWidget {
  PharmacyScreen({Key? key}) : super(key: key);

  Completer<WebViewController> webViewController =
      Completer<WebViewController>();

  static Widget builder(BuildContext context) {
    return BlocProvider<PharmacyBloc>(
        create: (context) =>
            PharmacyBloc(PharmacyState(pharmacyModelObj: PharmacyModel()))
              ..add(PharmacyInitialEvent()),
        child: PharmacyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: BlocSelector<PharmacyBloc, PharmacyState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "msg_search_drugs_category".tr);
                          })),
                  SizedBox(height: 24.v),
                  _buildCta(context),
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h, right: 24.h),
                      child: _buildHeaderRow(context,
                          productOnSaleText: "lbl_popular_product".tr,
                          seeAllText: "lbl_see_all".tr)),
                  SizedBox(height: 10.v),
                  _buildPopularProductList(context),
                  SizedBox(height: 26.v),
                  Padding(
                      padding: EdgeInsets.only(left: 21.h, right: 24.h),
                      child: _buildHeaderRow(context,
                          productOnSaleText: "lbl_product_on_sale".tr,
                          seeAllText: "lbl_see_all".tr)),
                  SizedBox(height: 12.v),
                  _buildProductOnSaleList(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 42.v,
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 10.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_pharmacy".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 9.v))
        ]);
  }

  /// Section Widget
  Widget _buildCta(BuildContext context) {
    return SizedBox(
        height: 135.v,
        width: 335.h,
        child: WebView(
            initialUrl: 'https://flutter.dev',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController controller) {
              webViewController.complete(controller);
            },
            onProgress: (int progress) {
              print("WebView is loading (progress : $progress%)");
            },
            onPageStarted: (String url) {
              print("Page started loading: $url");
            },
            onPageFinished: (String url) {
              print("Page finished loading: $url");
            }));
  }

  /// Section Widget
  Widget _buildPopularProductList(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 165.v,
            child: BlocSelector<PharmacyBloc, PharmacyState, PharmacyModel?>(
                selector: (state) => state.pharmacyModelObj,
                builder: (context, pharmacyModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 21.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 21.h);
                      },
                      itemCount:
                          pharmacyModelObj?.popularproductlistItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        PopularproductlistItemModel model = pharmacyModelObj
                                ?.popularproductlistItemList[index] ??
                            PopularproductlistItemModel();
                        return PopularproductlistItemWidget(model);
                      });
                })));
  }

  /// Section Widget
  Widget _buildProductOnSaleList(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 165.v,
            child: BlocSelector<PharmacyBloc, PharmacyState, PharmacyModel?>(
                selector: (state) => state.pharmacyModelObj,
                builder: (context, pharmacyModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 21.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 17.h);
                      },
                      itemCount:
                          pharmacyModelObj?.productonsalelistItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        ProductonsalelistItemModel model = pharmacyModelObj
                                ?.productonsalelistItemList[index] ??
                            ProductonsalelistItemModel();
                        return ProductonsalelistItemWidget(model);
                      });
                })));
  }

  /// Common widget
  Widget _buildHeaderRow(
    BuildContext context, {
    required String productOnSaleText,
    required String seeAllText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(productOnSaleText,
          style: theme.textTheme.titleMedium!
              .copyWith(color: theme.colorScheme.onPrimary)),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(seeAllText,
              style: CustomTextStyles.labelLargePrimary_1
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }
}
