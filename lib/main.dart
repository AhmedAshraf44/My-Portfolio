import 'package:ahmed_ashraf_website/core/app_color.dart';
import 'package:ahmed_ashraf_website/core/my_bloc_observer.dart';
import 'package:ahmed_ashraf_website/feature/home/presentation/view/home_view.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //print(MediaQuery.sizeOf(context).width);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmd Ashraf',
      theme: ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily,
        scaffoldBackgroundColor: AppColor.kWhiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.kWhiteColor,
          elevation: 0,
        ),
      ),
      home: const HomeView(),
    );
  }
}
