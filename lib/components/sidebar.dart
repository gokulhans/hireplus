import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hireplusapp/screens/shared/welcome/welcome.dart';
import 'package:hireplusapp/services/auth_service.dart';

class Sidebar extends StatelessWidget {
  final AuthService _authService = Get.find<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[700], // Use Material Design colors
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout,
                color: Colors.black87), // Use Material Design icon colors
            title: Text('Logout'),
            onTap: _signOut,
          ),
        ],
      ),
    );
  }

  Future<void> _signOut() async {
    try {
      GoogleSignIn().signOut();
      await _authService.signOut();
      Get.offAll(() => WelcomeScreen());
    } catch (e) {
      print(e);
    }
  }
}
