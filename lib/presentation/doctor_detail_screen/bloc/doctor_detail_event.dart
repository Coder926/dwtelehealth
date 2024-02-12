// ignore_for_file: must_be_immutable

part of 'doctor_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DoctorDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DoctorDetailEvent extends Equatable {}

/// Event that is dispatched when the DoctorDetail widget is first created.
class DoctorDetailInitialEvent extends DoctorDetailEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends DoctorDetailEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
