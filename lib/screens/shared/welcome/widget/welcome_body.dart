import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hireplusapp/screens/recruiter/auth/signup/signup.dart';
import 'package:hireplusapp/screens/user/auth/signin/signin.dart';
import 'package:hireplusapp/screens/user/auth/signup/signup.dart';
import 'package:hireplusapp/utils/image_strings.dart';
import 'package:hireplusapp/utils/sizes.dart';
import 'package:hireplusapp/utils/text_strings.dart';
import 'package:hireplusapp/utils/widget_functions.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            addVerticalSpace(10),
            Image(
                image: const AssetImage(tWelcomeTopImage),
                height: height * 0.6),
            const Column(
              children: [
                Text(
                  tWelcomeTitle,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    tWelcomeSubTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                  onPressed: () => Get.to(() => const UserSignInScreen()),
                  style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      padding:
                          const EdgeInsets.symmetric(vertical: tButtonHeight)),
                  child: const Text(tLogin),
                )),
                addHorizontalSpace(10),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () => Get.to(() => const UserSignUpScreen()),
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      padding:
                          const EdgeInsets.symmetric(vertical: tButtonHeight)),
                  child: const Text(tSignUp),
                ))
              ],
            ),
            // addVerticalSpace(10),
            TextButton(
              onPressed: () => Get.to(() => const RecruiterSignUpScreen()),
              child: const Center(
                child: Text(tOwnerQuestion),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserLoginPage {
  const UserLoginPage();
}
