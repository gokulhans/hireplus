import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:hireplus/screens/notification/recruiter_notification.dart/recruiter_notification.dart';

class RecruiterAppBarMain extends StatelessWidget {
  const RecruiterAppBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Colors.white,
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      ),
      backgroundColor: Colors.white,
      bottomOpacity: 0.0,
      elevation: 0.0,
      centerTitle: true,
      // automaticallyImplyLeading: false,
      title: const Text(
        "Hireplus",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w800),
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          icon: const Icon(
            Icons.notifications_active,
            size: 20,
            color: Colors.blue,
          ),
          onPressed: () async {
            // Get.to(const RecruiterNotifications());
          },
        ),
      ],

      iconTheme: const IconThemeData(color: Colors.blue),
    );
  }
}
