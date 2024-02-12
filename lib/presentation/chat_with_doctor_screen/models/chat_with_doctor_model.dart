// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [chat_with_doctor_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatWithDoctorModel extends Equatable {
  ChatWithDoctorModel() {}

  ChatWithDoctorModel copyWith() {
    return ChatWithDoctorModel();
  }

  @override
  List<Object?> get props => [];
}
