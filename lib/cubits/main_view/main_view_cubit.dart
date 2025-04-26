import 'package:flutter_bloc/flutter_bloc.dart';
import 'main_view_state.dart';

class MainViewCubit extends Cubit<MainViewStates>{
  MainViewCubit(): super(MainViewInitialState());

  int bottomNavIndex = 1 ;



  void changeBottomNavIndex ({required int index}){

    bottomNavIndex = index ;

    emit(ChangeBottomNavIndexState());

  }



}