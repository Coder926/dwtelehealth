// ignore_for_file: must_be_immutable

part of 'video_call_bloc.dart';

/// Represents the state of VideoCall in the application.
class VideoCallState extends Equatable {
  VideoCallState({this.videoCallModelObj});

  VideoCallModel? videoCallModelObj;

  @override
  List<Object?> get props => [
        videoCallModelObj,
      ];
  VideoCallState copyWith({VideoCallModel? videoCallModelObj}) {
    return VideoCallState(
      videoCallModelObj: videoCallModelObj ?? this.videoCallModelObj,
    );
  }
}
