import 'package:api_example/constant/my_url.dart';
import 'package:api_example/http/http_helper.dart';
import 'package:api_example/models/news_models.dart';
import 'package:api_example/screens/business.dart';
import 'package:api_example/screens/science.dart';
import 'package:api_example/screens/settings.dart';
import 'package:api_example/screens/technology.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
bool isDark=false;
  int currentIndex = 0;
  NewsModel? newsModel ;
  NewsModel ? scienceModel;
  NewsModel ? technologyModel;


  void changeNavBar(int index) {
    currentIndex = index;
    switch(index){
      case 0:
        print("0");
      break;
      case 1:
        print("1");
        break;
      case 2:
        print("2");
        break;
      case 3:
        print("3");
    }
    emit(HomeChangeNavBar());
  }

  List<Widget> myScreens = [Business(), Science(), Technology(), Settings()];





  void getBusinessNews() async {
    emit(HomeGetBusinessDataLoading());
    await HttpHelper.getDataFromApi(LINK: BusinessUrl)
        .then((value) {
      newsModel = NewsModel.fromJson(value);
      emit(HomeGetBusinessDataSuss());
    }).catchError((onError) {
      print("Error is${onError.toString()}");
      emit(HomeGetBusinessDataError());
    });
  }

  void getScienceNews() async {
    emit(HomeGetScienceDataLoading());
    await HttpHelper.getDataFromApi(LINK: ScienceUrl)
        .then((value) {
      scienceModel = NewsModel.fromJson(value);
      emit(HomeGetScienceDataSuss());
    }).catchError((onError) {
      print("Error is${onError.toString()}");
      emit(HomeGetScienceDataError());
    });
  }



  void getTechnologyNews() async {
    emit(HomeGetTechnologyDataLoading());
    await HttpHelper.getDataFromApi(LINK: TechnologyUrl)
        .then((value) {
      technologyModel = NewsModel.fromJson(value);
      emit(HomeGetTechnologyDataSuss());

    }).catchError((onError) {
      print("Error is${onError.toString()}");
      emit(HomeGetTechnologyDataError());
    });
  }


  void changeTheme(){
    isDark=!isDark;
    emit(HomeChangeThemeState());
  }
}
