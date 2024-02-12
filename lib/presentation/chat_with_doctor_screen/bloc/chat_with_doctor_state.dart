// ignore_for_file: must_be_immutable

part of 'chat_with_doctor_bloc.dart';

/// Represents the state of ChatWithDoctor in the application.
class ChatWithDoctorState extends Equatable {
  ChatWithDoctorState({
    this.messageController,
    this.chatWithDoctorModelObj,
  });

  TextEditingController? messageController;

  ChatWithDoctorModel? chatWithDoctorModelObj;

  @override
  List<Object?> get props => [
        messageController,
        chatWithDoctorModelObj,
      ];
  ChatWithDoctorState copyWith({
    TextEditingController? messageController,
    ChatWithDoctorModel? chatWithDoctorModelObj,
  }) {
    return ChatWithDoctorState(
      messageController: messageController ?? this.messageController,
      chatWithDoctorModelObj:
          chatWithDoctorModelObj ?? this.chatWithDoctorModelObj,
    );
  }
}
