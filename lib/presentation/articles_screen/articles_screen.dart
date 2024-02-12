import '../articles_screen/widgets/articlelist1_item_widget.dart';
import '../articles_screen/widgets/articlelist_item_widget.dart';
import '../articles_screen/widgets/chipview_item_widget.dart';
import 'bloc/articles_bloc.dart';
import 'models/articlelist1_item_model.dart';
import 'models/articlelist_item_model.dart';
import 'models/articles_model.dart';
import 'models/chipview_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dwtelehealth/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dwtelehealth/widgets/app_bar/custom_app_bar.dart';
import 'package:dwtelehealth/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ArticlesBloc>(
        create: (context) =>
            ArticlesBloc(ArticlesState(articlesModelObj: ArticlesModel()))
              ..add(ArticlesInitialEvent()),
        child: ArticlesScreen());
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
                    padding: EdgeInsets.only(top: 23.v),
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: BlocSelector<ArticlesBloc, ArticlesState,
                                  TextEditingController?>(
                              selector: (state) => state.searchController,
                              builder: (context, searchController) {
                                return CustomSearchView(
                                    controller: searchController,
                                    hintText: "msg_search_articles".tr);
                              })),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text("msg_popular_articles".tr,
                                  style: theme.textTheme.titleMedium))),
                      SizedBox(height: 10.v),
                      _buildChipView(context),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: _buildRelatedArticlesRow(context,
                              relatedArticlesText: "msg_trending_articles".tr,
                              seeAllText: "lbl_see_all".tr)),
                      SizedBox(height: 10.v),
                      _buildArticleList(context),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: _buildRelatedArticlesRow(context,
                              relatedArticlesText: "msg_related_articles".tr,
                              seeAllText: "lbl_see_all".tr)),
                      SizedBox(height: 12.v),
                      _buildArticleList1(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 32.h, top: 8.v, bottom: 8.v)),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_articles".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconChevronLeftOnprimary24x24,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v))
        ]);
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return BlocSelector<ArticlesBloc, ArticlesState, ArticlesModel?>(
        selector: (state) => state.articlesModelObj,
        builder: (context, articlesModelObj) {
          return Wrap(
              runSpacing: 5.v,
              spacing: 5.h,
              children: List<Widget>.generate(
                  articlesModelObj?.chipviewItemList.length ?? 0, (index) {
                ChipviewItemModel model =
                    articlesModelObj?.chipviewItemList[index] ??
                        ChipviewItemModel();
                return ChipviewItemWidget(model, onSelectedChipView: (value) {
                  context.read<ArticlesBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                });
              }));
        });
  }

  /// Section Widget
  Widget _buildArticleList(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 219.v,
            child: BlocSelector<ArticlesBloc, ArticlesState, ArticlesModel?>(
                selector: (state) => state.articlesModelObj,
                builder: (context, articlesModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 24.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 15.h);
                      },
                      itemCount:
                          articlesModelObj?.articlelistItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ArticlelistItemModel model =
                            articlesModelObj?.articlelistItemList[index] ??
                                ArticlelistItemModel();
                        return ArticlelistItemWidget(model);
                      });
                })));
  }

  /// Section Widget
  Widget _buildArticleList1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<ArticlesBloc, ArticlesState, ArticlesModel?>(
            selector: (state) => state.articlesModelObj,
            builder: (context, articlesModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10.v);
                  },
                  itemCount: articlesModelObj?.articlelist1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Articlelist1ItemModel model =
                        articlesModelObj?.articlelist1ItemList[index] ??
                            Articlelist1ItemModel();
                    return Articlelist1ItemWidget(model);
                  });
            }));
  }

  /// Common widget
  Widget _buildRelatedArticlesRow(
    BuildContext context, {
    required String relatedArticlesText,
    required String seeAllText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(relatedArticlesText,
          style: CustomTextStyles.titleMediumBlack900
              .copyWith(color: appTheme.black900)),
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(seeAllText,
              style: CustomTextStyles.labelLargePrimary_1
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }
}
