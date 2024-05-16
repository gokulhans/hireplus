import 'package:flutter/material.dart';
import 'package:hireplusapp/screens/user/auth/signin/widget/signin_body.dart';

class UserSignInScreen extends StatelessWidget {
  const UserSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Sign In'),
      ),
      body: UserSignInBody(),
    );
  }
}
