import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/utils/routes/app_routes.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
          ),
          scaffoldBackgroundColor: AppColors.backGroundColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.backGroundColor,
          ),
          // seedColor: Colors.deepPurple,
          useMaterial3: true,
          fontFamily: "Metropolis"),
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      initialRoute: RoutesName.signUpScreen,
    );
  }
}
