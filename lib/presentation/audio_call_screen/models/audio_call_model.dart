// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [audio_call_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AudioCallModel extends Equatable {
  AudioCallModel() {}

  AudioCallModel copyWith() {
    return AudioCallModel();
  }

  @override
  List<Object?> get props => [];
}
