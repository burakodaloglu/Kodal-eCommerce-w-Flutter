import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kodal_e_commerce/common/helper/navigator/router.dart';
import 'package:kodal_e_commerce/core/configs/app_vectors.dart';
import 'package:kodal_e_commerce/presentation/splash/bloc/splash_cubit.dart';
import 'package:kodal_e_commerce/presentation/splash/bloc/splash_state.dart';

import '../../../core/configs/theme/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit,SplashState>(
      listener: (context,state){
        if(state is UnAuthenticated){
          context.go(AppRoutes.signIn);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: SvgPicture.asset(AppVectors.appLogo,width: 150, height: 150,),
        ),
      ),
    );
  }
}
