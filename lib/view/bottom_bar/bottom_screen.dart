import 'package:e_commerce/view/bottom_bar/shoppingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../res/commen/mediaquery/app_mediaquery.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';
import '../home/home_screen.dart';
import 'beg_screen.dart';
import 'favorites_screen.dart';
import 'profile_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  //int currentIndex = 0;
  // final List<Widget> listOfScreen = [
  //   const HomeScreen(),
  //   const ShoppingScreen(),
  //   const BegScreen(),
  //   const FavoritesScreen(),
  //   const ProfileScreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: AppColors.elevatedButtonColor,
          inactiveColor: AppColors.labelTextColor,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Icon(Icons.home),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Shop',
              activeIcon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppImages.unActiveBag,
                  height: height(context) / 30),
              label: 'Bag',
              activeIcon: Image.asset(AppImages.activeBag,
                  height: height(context) / 30),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favorites',
              activeIcon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.unActiveProfile,
                height: height(context) / 30,
              ),
              label: 'Profile',
              activeIcon: Image.asset(AppImages.activeProfile,
                  height: height(context) / 30),
            ),
          ],
          iconSize: height(context) / 30,
          backgroundColor: AppColors.backGroundColor,
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: HomeScreen(),
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: ShoppingScreen(),
                  );
                },
              );
            case 2:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: BegScreen(),
                  );
                },
              );
            case 3:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: FavoritesScreen(),
                  );
                },
              );
            case 4:
              return CupertinoTabView(
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: ProfileScreen(),
                  );
                },
              );
          }
          return Container();
        });
    // return SafeArea(
    //   child: Scaffold(
    //     bottomNavigationBar: BottomNavigationBar(
    //       currentIndex: currentIndex,
    //       type:
    //           BottomNavigationBarType.fixed, // Fixed// <-- This works for fixed
    //       items: <BottomNavigationBarItem>[
    //         const BottomNavigationBarItem(
    //           icon: Icon(Icons.home_outlined),
    //           label: 'Home',
    //           activeIcon: Icon(Icons.home),
    //         ),
    //         const BottomNavigationBarItem(
    //           icon: Icon(Icons.shopping_cart_outlined),
    //           label: 'Shop',
    //           activeIcon: Icon(Icons.shopping_cart),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Image.asset(AppImages.unActiveBag,
    //               height: height(context) / 30),
    //           label: 'Bag',
    //           activeIcon: Image.asset(AppImages.activeBag,
    //               height: height(context) / 30),
    //         ),
    //         const BottomNavigationBarItem(
    //           icon: Icon(Icons.favorite_border_outlined),
    //           label: 'Favorites',
    //           activeIcon: Icon(Icons.favorite),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Image.asset(
    //             AppImages.unActiveProfile,
    //             height: height(context) / 30,
    //           ),
    //           label: 'Profile',
    //           activeIcon: Image.asset(AppImages.activeProfile,
    //               height: height(context) / 30),
    //         ),
    //       ],
    //       onTap: (index) {
    //         debugPrint("Value---->$index");
    //         setState(() {
    //           currentIndex = index;
    //         });
    //       },
    //
    //       selectedItemColor: AppColors.elevatedButtonColor,
    //       unselectedItemColor: AppColors.labelTextColor,
    //
    //       showUnselectedLabels: true,
    //       showSelectedLabels: true,
    //       iconSize: height(context) / 30,
    //       backgroundColor: AppColors.backGroundColor,
    //     ),
    //     body: listOfScreen.elementAt(currentIndex),
    //   ),
    // );
  }
}
