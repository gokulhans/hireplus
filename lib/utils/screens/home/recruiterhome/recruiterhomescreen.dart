// import 'package:flutter/material.dart';
// import 'package:hireplus/components/appbar/appbarmain.dart';
// import 'package:hireplus/components/appbar/recruiterappbar.dart';
// import 'package:hireplus/components/sidebar/sidebar.dart';
// import 'package:hireplus/screens/auth/recruiter_login/recruiter_login.dart';
// import 'package:hireplus/screens/auth/recruiter_signup/recruiter_signup.dart';
// import 'package:hireplus/screens/home/recruiterhome/recruiterhomepage.dart';

// class RecruiterHomeScreen extends StatefulWidget {
//   const RecruiterHomeScreen({super.key});

//   @override
//   State<RecruiterHomeScreen> createState() => _RecruiterHomeScreenState();
// }

// class _RecruiterHomeScreenState extends State<RecruiterHomeScreen> {
//   int currentIndex = 0;
//   final screens = [
//     const RecruiterHomePage(),
//     const RecruiterLoginPage(),
//     const RecruiterSignUpPage(),
//     const RecruiterSignUpPage()
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: const PreferredSize(
//           preferredSize: Size.fromHeight(50.0),
//           child: RecruiterAppBarMain(),
//         ),
//         drawer: NavDrawer(),
//         body: screens[currentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//             backgroundColor: Colors.white,
//             currentIndex: currentIndex,
//             onTap: (index) => setState(() => currentIndex = index),
//             unselectedLabelStyle: const TextStyle(
//               color: Colors.grey,
//             ),
//             selectedIconTheme: const IconThemeData(
//               color: Colors.blue,
//             ),
//             selectedLabelStyle: const TextStyle(
//               color: Colors.blue,
//             ),
//             unselectedIconTheme: const IconThemeData(
//               color: Colors.grey,
//             ),
//             showSelectedLabels: true,
//             type: BottomNavigationBarType.fixed,
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Recruit'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.chat), label: 'Messages'),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.person,
//                   // color: Colors.red,
//                 ),
//                 label: 'Profile',
//               ),
//             ]),
//       ),
//     );
//   }
// }
