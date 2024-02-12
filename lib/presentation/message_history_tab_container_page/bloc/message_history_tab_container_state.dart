// ignore_for_file: must_be_immutable

part of 'message_history_tab_container_bloc.dart';

/// Represents the state of MessageHistoryTabContainer in the application.
class MessageHistoryTabContainerState extends Equatable {
  MessageHistoryTabContainerState({this.messageHistoryTabContainerModelObj});

  MessageHistoryTabContainerModel? messageHistoryTabContainerModelObj;

  @override
  List<Object?> get props => [
        messageHistoryTabContainerModelObj,
      ];
  MessageHistoryTabContainerState copyWith(
      {MessageHistoryTabContainerModel? messageHistoryTabContainerModelObj}) {
    return MessageHistoryTabContainerState(
      messageHistoryTabContainerModelObj: messageHistoryTabContainerModelObj ??
          this.messageHistoryTabContainerModelObj,
    );
  }
}
