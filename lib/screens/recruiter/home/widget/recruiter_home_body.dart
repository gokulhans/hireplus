import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RecruiterHomeBody extends StatefulWidget {
  @override
  _RecruiterHomeBodyState createState() => _RecruiterHomeBodyState();
}

class _RecruiterHomeBodyState extends State<RecruiterHomeBody> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? _user;

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  Future<void> _getUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        setState(() {
          _user = user;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _user != null
        ? Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${_user!.displayName ?? 'N/A'}',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Email: ${_user!.email ?? 'N/A'}',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Phone: ${_user!.phoneNumber ?? 'N/A'}',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
