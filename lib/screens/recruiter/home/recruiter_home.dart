import 'package:flutter/material.dart';
import 'package:hireplusapp/components/sidebar.dart';
import 'package:hireplusapp/screens/recruiter/home/widget/recruiter_home_body.dart';
import 'package:hireplusapp/screens/recruiter/profile/profile.dart';

class RecruiterHomeScreen extends StatefulWidget {
  const RecruiterHomeScreen({super.key});

  @override
  State<RecruiterHomeScreen> createState() => _RecruiterHomeScreenState();
}

class _RecruiterHomeScreenState extends State<RecruiterHomeScreen> {
  int _selectedIndex = 0; // To track the selected bottom navigation bar item

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      RecruiterHomeBody(),
      RecruiterHomeBody(),
      MyRecruiterProfileScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Sidebar(),
      body: screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        // Use elevatedNavigationBar for Material 3 specific styling
        key: ValueKey('RecruiterHomeBottomNavBar'), // For testing purposes
        onDestinationSelected: _onItemTapped,
        selectedIndex: _selectedIndex,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home),
            label: 'Home',
            selectedIcon: const Icon(Icons.home_filled),
            tooltip: 'Home',
          ),
          // NavigationDestination(
          //   icon: const Icon(Icons.notifications),
          //   label: 'Notifications',
          //   selectedIcon: const Icon(Icons.notifications_rounded),
          //   tooltip: 'Notifications',
          // ),
          NavigationDestination(
            icon: const Icon(Icons.post_add),
            label: 'Post',
            selectedIcon: const Icon(Icons.post_add_rounded),
            tooltip: 'Post',
          ),
          NavigationDestination(
            icon: const Icon(Icons.person),
            label: 'Profile',
            selectedIcon: const Icon(Icons.person_rounded),
            tooltip: 'Profile',
          ),
        ],
      ),
    );
  }
}
