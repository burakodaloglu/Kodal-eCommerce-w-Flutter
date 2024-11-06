import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kodal_e_commerce/presentation/splash/bloc/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() async{
    await Future.delayed(const Duration(seconds: 3));
    emit(UnAuthenticated());
  }
}
