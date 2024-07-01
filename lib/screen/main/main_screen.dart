import 'package:auto_route/auto_route.dart';
import 'package:basketball_news_app/screen/home/home_screen.dart';
import 'package:basketball_news_app/screen/settings/settings_screen.dart';
import 'package:basketball_news_app/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;
  final _tabs = [HomeScreen(), Container(), SettingsScreen()];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: _tabs[_currentIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            iconTheme: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return IconThemeData(color: AppColors.red);
              } else {
                return IconThemeData(color: AppColors.grey);
              }
            }),
            labelTextStyle: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.selected)) {
                return const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.red);
              }
              return TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey);
            }),
          ),
          child: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedIndex: _currentIndex,
            backgroundColor: AppColors.darkGrey,
            indicatorColor: Colors.transparent,
            destinations: [
              NavigationDestination(
                selectedIcon: SvgPicture.asset('assets/images/tab-icons/home.svg', color: AppColors.red),
                icon: SvgPicture.asset('assets/images/tab-icons/home.svg', color: AppColors.grey),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset('assets/images/tab-icons/score.svg', color: AppColors.red),
                icon: SvgPicture.asset('assets/images/tab-icons/score.svg', color: AppColors.grey),
                label: 'Score',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset('assets/images/tab-icons/settings.svg', color: AppColors.red),
                icon: SvgPicture.asset('assets/images/tab-icons/settings.svg', color: AppColors.grey),
                label: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
