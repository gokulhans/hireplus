import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hireplusapp/firebase_options.dart';
import 'package:hireplusapp/screens/shared/splashscreen/splash_screen.dart';
import 'package:hireplusapp/screens/shared/welcome/welcome.dart';
import 'package:hireplusapp/screens/user/auth/signup/signup.dart';
import 'package:hireplusapp/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String googleSignInClientId =
    '770620836493-09kpesrqvlefas500arsd0acv4jm86up.apps.googleusercontent.com';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(AuthService());
  Get.put(GoogleSignIn(
    clientId: googleSignInClientId,
  ));
  Get.putAsync(() async => await SharedPreferences.getInstance());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hireplus',
      theme: ThemeData(useMaterial3: true),
      home: const SplashScreen(),
      routes: const {},
    );
  }
}
