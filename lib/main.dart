import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kodal_e_commerce/common/helper/navigator/router.dart';
import 'package:kodal_e_commerce/core/configs/theme/app_theme.dart';
import 'package:kodal_e_commerce/firebase_options.dart';
import 'package:kodal_e_commerce/presentation/splash/bloc/splash_cubit.dart';
import 'package:kodal_e_commerce/presentation/splash/page/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp.router(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        routerConfig: router, // GoRouter konfigürasyonunu burada kullanıyoruz
      ),
    );
  }
}
