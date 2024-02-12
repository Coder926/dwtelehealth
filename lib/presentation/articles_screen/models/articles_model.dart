// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipview_item_model.dart';
import '../../../core/app_export.dart';
import 'articlelist_item_model.dart';
import 'articlelist1_item_model.dart';

/// This class defines the variables used in the [articles_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArticlesModel extends Equatable {
  ArticlesModel({
    this.chipviewItemList = const [],
    this.articlelistItemList = const [],
    this.articlelist1ItemList = const [],
  }) {}

  List<ChipviewItemModel> chipviewItemList;

  List<ArticlelistItemModel> articlelistItemList;

  List<Articlelist1ItemModel> articlelist1ItemList;

  ArticlesModel copyWith({
    List<ChipviewItemModel>? chipviewItemList,
    List<ArticlelistItemModel>? articlelistItemList,
    List<Articlelist1ItemModel>? articlelist1ItemList,
  }) {
    return ArticlesModel(
      chipviewItemList: chipviewItemList ?? this.chipviewItemList,
      articlelistItemList: articlelistItemList ?? this.articlelistItemList,
      articlelist1ItemList: articlelist1ItemList ?? this.articlelist1ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [chipviewItemList, articlelistItemList, articlelist1ItemList];
}
