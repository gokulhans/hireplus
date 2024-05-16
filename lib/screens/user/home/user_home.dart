import 'package:flutter/material.dart';
import 'package:hireplusapp/components/sidebar.dart';
import 'package:hireplusapp/screens/user/home/widget/user_home_body.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Home'),
      ),
      drawer: Sidebar(),
      body: UserHomeBody(),
    );
  }
}
