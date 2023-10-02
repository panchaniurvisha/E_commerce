import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:e_commerce/view/home/home_screen_3.dart';
import 'package:flutter/material.dart';

import '../../view/bottom_bar/bottom_screen.dart';
import '../../view/catalog_1_screen.dart';
import '../../view/categories_2_screen.dart';
import '../../view/check_out_screen.dart';
import '../../view/filter/filter_list_screen.dart';
import '../../view/filter/filter_screen.dart';
import '../../view/forgot_password_screen.dart';
import '../../view/home/home_screen.dart';
import '../../view/home/home_screen_2.dart';
import '../../view/product_card_screen.dart';
import '../../view/sign_in/login_screen.dart';
import '../../view/sign_up/sign_up_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.signUpScreen: (context) => const SignUpScreen(),
  RoutesName.loginScreen: (context) => const LoginScreen(),
  RoutesName.forGotPasswordScreen: (context) => const ForGotPasswordScreen(),
  RoutesName.homeScreen: (context) => const HomeScreen(),
  RoutesName.homeScreenTwo: (context) => const HomeScreenTwo(),
  RoutesName.homeScreenThree: (context) => const HomeScreenThree(),
  RoutesName.bottomScreen: (context) => const BottomScreen(),
  RoutesName.categoriesTwoScreen: (context) => const CategoriesTwoScreen(),
  RoutesName.catalogOneScreen: (context) => const CatalogOneScreen(),
  RoutesName.productCardScreen: (context) => const ProductCardScreen(),
  RoutesName.filterScreen: (context) => const FilterScreen(),
  RoutesName.filterListScreen: (context) => const FilterListScreen(),
  RoutesName.checkOutScreen: (context) => const CheckOutScreen(),
};
