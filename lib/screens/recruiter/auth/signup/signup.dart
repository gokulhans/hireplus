import 'package:flutter/material.dart';
import 'package:hireplusapp/screens/recruiter/auth/signup/widget/signup_body.dart';

class RecruiterSignUpScreen extends StatelessWidget {
  const RecruiterSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recruiter Sign Up'),
      ),
      body: RecruiterSignUpBody(),
    );
  }
}
