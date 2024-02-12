// ignore_for_file: must_be_immutable

part of 'articles_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Articles widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArticlesEvent extends Equatable {}

/// Event that is dispatched when the Articles widget is first created.
class ArticlesInitialEvent extends ArticlesEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ArticlesEvent {
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
