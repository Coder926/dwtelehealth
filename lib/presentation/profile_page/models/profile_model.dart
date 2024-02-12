// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'profilelistsection_item_model.dart';

/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel extends Equatable {
  ProfileModel({this.profilelistsectionItemList = const []}) {}

  List<ProfilelistsectionItemModel> profilelistsectionItemList;

  ProfileModel copyWith(
      {List<ProfilelistsectionItemModel>? profilelistsectionItemList}) {
    return ProfileModel(
      profilelistsectionItemList:
          profilelistsectionItemList ?? this.profilelistsectionItemList,
    );
  }

  @override
  List<Object?> get props => [profilelistsectionItemList];
}
