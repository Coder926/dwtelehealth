// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'drugslist_item_model.dart';

/// This class defines the variables used in the [my_cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartModel extends Equatable {
  MyCartModel({this.drugslistItemList = const []}) {}

  List<DrugslistItemModel> drugslistItemList;

  MyCartModel copyWith({List<DrugslistItemModel>? drugslistItemList}) {
    return MyCartModel(
      drugslistItemList: drugslistItemList ?? this.drugslistItemList,
    );
  }

  @override
  List<Object?> get props => [drugslistItemList];
}
