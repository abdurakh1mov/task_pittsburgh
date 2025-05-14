import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/bloc/home_bloc.dart';
import 'package:task/screens/main_screen.dart';
import 'package:task/screens/splash_screen.dart';
import 'package:task/service/db_base.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveBase.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/main': (context) => const MainScreen(),
      // },
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HomeBloc(),
        child: const SplashScreen(),
      ),
    );
  }
}
