import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipview_item_model.dart';
import '../models/articlelist_item_model.dart';
import '../models/articlelist1_item_model.dart';
import 'package:dwtelehealth/presentation/articles_screen/models/articles_model.dart';
part 'articles_event.dart';
part 'articles_state.dart';

/// A bloc that manages the state of a Articles according to the event that is dispatched to it.
class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  ArticlesBloc(ArticlesState initialState) : super(initialState) {
    on<ArticlesInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ArticlesState> emit,
  ) {
    List<ChipviewItemModel> newList =
        List<ChipviewItemModel>.from(state.articlesModelObj!.chipviewItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        articlesModelObj:
            state.articlesModelObj?.copyWith(chipviewItemList: newList)));
  }

  List<ChipviewItemModel> fillChipviewItemList() {
    return List.generate(3, (index) => ChipviewItemModel());
  }

  List<ArticlelistItemModel> fillArticlelistItemList() {
    return [
      ArticlelistItemModel(
          covidNineteen: ImageConstant.imgRectangle460,
          covidNineteen1: "Covid-19",
          comparingtheAstraZen:
              "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
          jun: "Jun 12, 2021",
          time: "6 min read"),
      ArticlelistItemModel(
          covidNineteen: ImageConstant.imgRectangle458,
          covidNineteen1: "Covid-19",
          comparingtheAstraZen: "The Horror Of The Second Wave Of COVID-19",
          jun: "Jun 10, 2021",
          time: "5 min read")
    ];
  }

  List<Articlelist1ItemModel> fillArticlelist1ItemList() {
    return [
      Articlelist1ItemModel(
          image: ImageConstant.imgUnsplash86rvjm9zowy,
          theHealthiest:
              "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
          jun: "Jun 10, 2021 ",
          time: "5min read",
          image1: ImageConstant.imgBookmark12x10)
    ];
  }

  _onInitialize(
    ArticlesInitialEvent event,
    Emitter<ArticlesState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        articlesModelObj: state.articlesModelObj?.copyWith(
            chipviewItemList: fillChipviewItemList(),
            articlelistItemList: fillArticlelistItemList(),
            articlelist1ItemList: fillArticlelist1ItemList())));
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
