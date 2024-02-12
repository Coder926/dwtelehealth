// ignore_for_file: must_be_immutable

part of 'drugs_detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DrugsDetail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DrugsDetailEvent extends Equatable {}

/// Event that is dispatched when the DrugsDetail widget is first created.
class DrugsDetailInitialEvent extends DrugsDetailEvent {
  @override
  List<Object?> get props => [];
}
