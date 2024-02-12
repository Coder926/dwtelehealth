import '../message_history_page/widgets/messagehistory_item_widget.dart';
import 'bloc/message_history_bloc.dart';
import 'models/message_history_model.dart';
import 'models/messagehistory_item_model.dart';
import 'package:dwtelehealth/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessageHistoryPage extends StatefulWidget {
  const MessageHistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  MessageHistoryPageState createState() => MessageHistoryPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessageHistoryBloc>(
      create: (context) => MessageHistoryBloc(MessageHistoryState(
        messageHistoryModelObj: MessageHistoryModel(),
      ))
        ..add(MessageHistoryInitialEvent()),
      child: MessageHistoryPage(),
    );
  }
}

class MessageHistoryPageState extends State<MessageHistoryPage>
    with AutomaticKeepAliveClientMixin<MessageHistoryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              _buildMessageHistory(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageHistory(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<MessageHistoryBloc, MessageHistoryState,
            MessageHistoryModel?>(
          selector: (state) => state.messageHistoryModelObj,
          builder: (context, messageHistoryModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount:
                  messageHistoryModelObj?.messagehistoryItemList.length ?? 0,
              itemBuilder: (context, index) {
                MessagehistoryItemModel model =
                    messageHistoryModelObj?.messagehistoryItemList[index] ??
                        MessagehistoryItemModel();
                return MessagehistoryItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
