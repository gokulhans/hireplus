import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hireplus/utils/widget_functions.dart';
import 'package:hireplus/pages/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      Get.to(() => const OnBoardingPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.black, // navigation bar color
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            // statusBarBrightness: Brightness.light
          ),
        ),
      ),
      body: Container(
        // decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   begin: Alignment.bottomCenter,
        //   end: Alignment.topCenter,
        //   colors: [hexToColor("#2B65EC"), hexToColor("#00BFFF")],
        //   transform: const GradientRotation(9 * pi / 135),
        // ),
        // ),
        color: Colors.white,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addVerticalSpace(30),
            Column(
              children: [
                const Center(
                    child: Image(
                  image: AssetImage("assets/icon/logo.jpg"),
                  width: 300,
                )),
                addVerticalSpace(10),
                // const Text(
                //   "Hireplus",
                //   style: TextStyle(
                //       fontWeight: FontWeight.w900,
                //       color: Colors.black87,
                //       fontSize: 18),
                // )
              ],
            ),
            // addVerticalSpace(50),
            const Text(
              "Seekers to Jobers",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            )
          ],
        )),
      ),
    );
  }
}
