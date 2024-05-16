import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hireplusapp/screens/user/home/user_home.dart';
import 'package:hireplusapp/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSignInBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final AuthService _authService = Get.find<AuthService>();
  SharedPreferences prefs = Get.find<SharedPreferences>();

  Future<void> _signInWithEmailAndPassword() async {
    try {
      await _authService.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      await prefs.setBool('isUser', true);
      Get.to(() => const UserHomeScreen());
    } catch (e) {
      print(e);
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await _authService.signInWithGoogle();
      await prefs.setBool('isUser', true);
      Get.to(() => const UserHomeScreen());
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
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _signInWithEmailAndPassword();
                }
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: _signInWithGoogle,
              child: Text('Sign In with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
