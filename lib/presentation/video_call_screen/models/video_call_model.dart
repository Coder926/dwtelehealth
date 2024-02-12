// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [video_call_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VideoCallModel extends Equatable {
  VideoCallModel() {}

  VideoCallModel copyWith() {
    return VideoCallModel();
  }

  @override
  List<Object?> get props => [];
}
