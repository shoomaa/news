import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/Shared/Theme.dart';

import 'Shared/bloc_observer.dart';
import 'UI/home/home_screen.dart';
import 'di/di.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  // Use cubits...
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  Apptheme.lightTheme,
      initialRoute:   HomeScreen.routeName,
      routes:{
        HomeScreen.routeName:(context) => HomeScreen(),
      },
    );
  }
}

