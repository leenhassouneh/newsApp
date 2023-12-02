part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeChangeNavBar extends HomeState {}
class HomeGetBusinessDataLoading extends HomeState {}
class HomeGetBusinessDataSuss extends HomeState {}
class HomeGetBusinessDataError extends HomeState {}
class HomeChangeThemeState extends HomeState {}


//Science
class HomeGetScienceDataLoading extends HomeState {}
class HomeGetScienceDataSuss extends HomeState {}
class HomeGetScienceDataError extends HomeState {}

//Technology
class HomeGetTechnologyDataLoading extends HomeState {}
class HomeGetTechnologyDataSuss extends HomeState {}
class HomeGetTechnologyDataError extends HomeState {}



