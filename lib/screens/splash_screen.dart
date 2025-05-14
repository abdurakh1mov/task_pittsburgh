import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/screens/main_screen.dart';

import '../bloc/home_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        mainScreen(),
      );
    });
    super.initState();
  }

  static PageRoute mainScreen() => MaterialPageRoute(
        builder: (contextBloc) {
          return BlocProvider(
            create: (context) => HomeBloc()
              ..add(HomeEvent.getHomeDatas(category: "Beef"))
              ..add(HomeEvent.getCategoryList())
              ..add(HomeEvent.getSavedMeals()),
            child: const MainScreen(),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: MediaQuery.of(context).size.width ,
          height: MediaQuery.of(context).size.height * 0.5,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
