import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messagehistory_item_model.dart';
import 'package:dwtelehealth/presentation/message_history_page/models/message_history_model.dart';
part 'message_history_event.dart';
part 'message_history_state.dart';

/// A bloc that manages the state of a MessageHistory according to the event that is dispatched to it.
class MessageHistoryBloc
    extends Bloc<MessageHistoryEvent, MessageHistoryState> {
  MessageHistoryBloc(MessageHistoryState initialState) : super(initialState) {
    on<MessageHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageHistoryInitialEvent event,
    Emitter<MessageHistoryState> emit,
  ) async {
    emit(state.copyWith(
        messageHistoryModelObj: state.messageHistoryModelObj?.copyWith(
      messagehistoryItemList: fillMessagehistoryItemList(),
    )));
  }

  List<MessagehistoryItemModel> fillMessagehistoryItemList() {
    return [
      MessagehistoryItemModel(
          drMarcusHorizon: ImageConstant.imgClose40x40,
          drMarcusHorizon1: "Dr. Marcus Horizon",
          iDonTHaveAny: "I don,t have any fever, but headchace...",
          oneThousandTwentyFour: "10.24",
          widget: "1")
    ];
  }
}
