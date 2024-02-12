// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'messagehistory_item_model.dart';

/// This class defines the variables used in the [message_history_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageHistoryModel extends Equatable {
  MessageHistoryModel({this.messagehistoryItemList = const []}) {}

  List<MessagehistoryItemModel> messagehistoryItemList;

  MessageHistoryModel copyWith(
      {List<MessagehistoryItemModel>? messagehistoryItemList}) {
    return MessageHistoryModel(
      messagehistoryItemList:
          messagehistoryItemList ?? this.messagehistoryItemList,
    );
  }

  @override
  List<Object?> get props => [messagehistoryItemList];
}
