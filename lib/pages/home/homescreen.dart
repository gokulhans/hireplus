import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hireplus/components/appbar/appbarmain.dart';
import 'package:hireplus/components/sidebar/sidebar.dart';
import 'package:hireplus/screens/login/login.dart';
import 'package:hireplus/screens/signup/signup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final screens = [const Login(), const SignUp(), const Login(), const Login()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBarMain(),
        ),
        drawer: NavDrawer(),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            unselectedLabelStyle: const TextStyle(
              color: Colors.grey,
            ),
            selectedIconTheme: const IconThemeData(
              color: Colors.blue,
            ),
            selectedLabelStyle: const TextStyle(
              color: Colors.blue,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.grey,
            ),
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat), label: 'Community'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_active),
                  label: 'Notifications'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  // color: Colors.red,
                ),
                label: 'Profile',
              ),
            ]),
      ),
    );
  }
}
