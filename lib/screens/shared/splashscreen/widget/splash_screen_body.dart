// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hireplusapp/screens/recruiter/home/recruiter_home.dart';
import 'package:hireplusapp/screens/shared/welcome/welcome.dart';
import 'package:hireplusapp/screens/user/home/user_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:hireplusapp/screens/shared/welcome/welcome.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  _SplashScreenBodyState createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  Future<void> navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    SharedPreferences prefs = Get.find<SharedPreferences>();
    bool user = prefs.getBool('isUser') ?? false;
    bool recruiter = prefs.getBool('isRecruiter') ?? false;
    if (recruiter) {
      Get.offAll(() => const RecruiterHomeScreen());
    } else if (user) {
      Get.offAll(() => const UserHomeScreen());
    } else {
      Get.offAll(() => const WelcomeScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fe7Q8uFeQOrMBBHu4P234%2Fc400052c4ab37d00f758e91f5b80e83e.png',
                width: 60,
                height: 60,
                fit: BoxFit.contain,
              ),
              Text(
                'Hireplus',
                style: GoogleFonts.getFont(
                  'DM Sans',
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
