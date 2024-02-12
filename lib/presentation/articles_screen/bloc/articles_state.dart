// ignore_for_file: must_be_immutable

part of 'articles_bloc.dart';

/// Represents the state of Articles in the application.
class ArticlesState extends Equatable {
  ArticlesState({
    this.searchController,
    this.articlesModelObj,
  });

  TextEditingController? searchController;

  ArticlesModel? articlesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        articlesModelObj,
      ];
  ArticlesState copyWith({
    TextEditingController? searchController,
    ArticlesModel? articlesModelObj,
  }) {
    return ArticlesState(
      searchController: searchController ?? this.searchController,
      articlesModelObj: articlesModelObj ?? this.articlesModelObj,
    );
  }
}
