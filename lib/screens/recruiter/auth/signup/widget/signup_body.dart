import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hireplusapp/screens/recruiter/auth/signin/signin.dart';
import 'package:hireplusapp/screens/recruiter/home/recruiter_home.dart';
import 'package:hireplusapp/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecruiterSignUpBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  final AuthService _authService = Get.find<AuthService>();
  SharedPreferences prefs = Get.find<SharedPreferences>();

  Future<void> _signUpWithEmailAndPassword() async {
    try {
      await _authService.signUpWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
        name: _nameController.text.trim(),
      );
      await prefs.setBool('isRecruiter', true);

      Get.to(() => const RecruiterHomeScreen());
    } catch (e) {
      print(e);
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await _authService.signInWithGoogle();
      await prefs.setBool('isRecruiter', true);

      Get.to(() => const RecruiterHomeScreen());
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _signUpWithEmailAndPassword();
                }
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: _signInWithGoogle,
              child: Text('Sign Up with Google'),
            ),
            TextButton(
              onPressed: () => Get.to(() => const RecruiterSignInScreen()),
              child: const Center(
                child: Text("Already have an Account ? SignIn"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
