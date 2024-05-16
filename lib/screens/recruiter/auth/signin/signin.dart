import 'package:flutter/material.dart';
import 'package:hireplusapp/screens/recruiter/auth/signin/widget/signin_body.dart';

class RecruiterSignInScreen extends StatelessWidget {
  const RecruiterSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recruiter Sign In'),
      ),
      body: RecruiterSignInBody(),
    );
  }
}
