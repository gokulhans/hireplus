import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hireplus/pages/update/updatedialog.dart';
// import 'package:new_version/new_version.dart';

class UpdateHome extends StatefulWidget {
  const UpdateHome({Key? key}) : super(key: key);

  @override
  State<UpdateHome> createState() => _UpdateHomeState();
}

class _UpdateHomeState extends State<UpdateHome> {
  // @override
  // void initState() {
  //   final newVersion = NewVersion(
  //     androidId: 'com.outq.hireplus',
  //   );

  //   Timer(const Duration(milliseconds: 800), () {
  //     checkNewVersion(newVersion);
  //   });

  //   super.initState();
  // }

  // void checkNewVersion(NewVersion newVersion) async {
  void checkNewVersion(newVersion) async {
    final status = await newVersion.getVersionStatus();
    if (status != null) {
      if (status.canUpdate) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return UpdateDialog(
              allowDismissal: true,
              description: status.releaseNotes!,
              version: status.storeVersion,
              appLink: status.appStoreLink,
            );
          },
        );
        newVersion.showUpdateDialog(
          context: context,
          versionStatus: status,
          dialogText:
              'New Version is available in the store (${status.storeVersion}), update now!',
          dialogTitle: 'Update is Available!',
        );
      }
    }
  }

  Future<bool> checkUserExists() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool userCompletedProfile = prefs.getBool('completeprofile') ?? false;
    return userCompletedProfile;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: checkUserExists(),
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data == true) {
            return Scaffold(body: Container());
          } else {
            return Scaffold(body: Container());
          }
        } else {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
