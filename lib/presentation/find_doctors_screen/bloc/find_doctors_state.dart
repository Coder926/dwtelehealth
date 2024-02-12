// ignore_for_file: must_be_immutable

part of 'find_doctors_bloc.dart';

/// Represents the state of FindDoctors in the application.
class FindDoctorsState extends Equatable {
  FindDoctorsState({
    this.searchController,
    this.chardiologistController,
    this.findDoctorsModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? chardiologistController;

  FindDoctorsModel? findDoctorsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        chardiologistController,
        findDoctorsModelObj,
      ];
  FindDoctorsState copyWith({
    TextEditingController? searchController,
    TextEditingController? chardiologistController,
    FindDoctorsModel? findDoctorsModelObj,
  }) {
    return FindDoctorsState(
      searchController: searchController ?? this.searchController,
      chardiologistController:
          chardiologistController ?? this.chardiologistController,
      findDoctorsModelObj: findDoctorsModelObj ?? this.findDoctorsModelObj,
    );
  }
}
