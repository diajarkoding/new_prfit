import 'package:prfit/pages/profil_page.dart';
import 'package:prfit/pages/excercises_page.dart';
import 'package:prfit/pages/home_page.dart';
import 'package:prfit/pages/insight_page.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;
  Widget customBottomNavBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: ClipRRect(
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                size: 26,
                color: currentIndex == 0 ? Colors.blue : blackColor,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Tutorial',
              icon: Icon(
                Icons.fitness_center,
                size: 26,
                color: currentIndex == 1 ? Colors.blue : blackColor,
              ),
            ),
            BottomNavigationBarItem(
              label: 'insights',
              icon: Icon(
                Icons.insights_rounded,
                size: 26,
                color: currentIndex == 2 ? Colors.blue : blackColor,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person,
                size: 26,
                color: currentIndex == 3 ? Colors.blue : blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();

      case 1:
        return const ExercisesPage();

      case 2:
        return const InsightPage();

      case 3:
        return const ProfilePage();

      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: customBottomNavBar(),
      body: body(),
    );
  }
}
