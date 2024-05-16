import 'package:flutter/material.dart';
import 'package:hireplusapp/screens/user/auth/signup/widget/signup_body.dart';

class UserSignUpScreen extends StatelessWidget {
  const UserSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('User Sign Up'),
        ),
        body: UserSignUpBody());
  }
}
