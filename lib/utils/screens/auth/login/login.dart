// import 'dart:math';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hireplus/models/usermodels.dart';
// import 'package:hireplus/screens/auth/signup/signup.dart';
// import 'package:hireplus/screens/home/userhome/userhomescreen.dart';
// import 'package:hireplus/utils/color_constants.dart';
// import 'package:hireplus/utils/sizes.dart';
// import 'package:hireplus/utils/text_strings.dart';
// import 'package:hireplus/utils/widget_functions.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class UserLoginPage extends StatefulWidget {
//   const UserLoginPage({super.key});

//   @override
//   State<UserLoginPage> createState() => _UserLoginPageState();
// }

// // TextEditingController nameController = TextEditingController(text: '');
// // TextEditingController emailController = TextEditingController(text: '');
// // TextEditingController pswdController = TextEditingController(text: '');

// class _UserLoginPageState extends State<UserLoginPage> {
//   UserModel user = UserModel("", "", "", "");

//   bool isLoading = false;
//   Future<void> _loginWithEmailAndPassword() async {
//     Color? msgclr;
//     String? msg;
//     String? msgdesc;

//     try {
//       final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: user.email, password: user.password);

//       print(credential);

//       msgclr = Colors.blue[400];
//       msg = "Login Success";
//       msgdesc = "User Logined Successfully";

//       SharedPreferences pref = await SharedPreferences.getInstance();
//       await pref.setString('username', user.name);
//       await pref.setString('useremail', user.email);
//       await pref.setString('userid', credential.user!.uid);
//       await pref.setBool('user', true);

//       Get.snackbar(
//         msg,
//         msgdesc,
//         icon: const Icon(Icons.person, color: Colors.white),
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: msgclr,
//         borderRadius: 12,
//         margin: const EdgeInsets.all(15),
//         colorText: Colors.white,
//         duration: const Duration(seconds: 3),
//         isDismissible: true,
//         dismissDirection: DismissDirection.horizontal,
//         forwardAnimationCurve: Curves.bounceIn,
//       );

//       setState(() {
//         isLoading = false;
//       });

//       Get.offAll(() => const UserHomeScreen());
//     } on FirebaseAuthException catch (e) {
//       msgdesc = "";
//       if (e.code == 'user-not-found') {
//         msgdesc = "No user found for that email.";
//       } else if (e.code == 'wrong-password') {
//         msgdesc = "Wrong password provided for that user.";
//       }

//       msgclr = Colors.red[400];
//       msg = "Login Failed";

//       Get.snackbar(
//         msg,
//         msgdesc,
//         icon: const Icon(Icons.person, color: Colors.white),
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: msgclr,
//         borderRadius: 12,
//         margin: const EdgeInsets.all(15),
//         colorText: Colors.white,
//         duration: const Duration(seconds: 3),
//         isDismissible: true,
//         dismissDirection: DismissDirection.horizontal,
//         forwardAnimationCurve: Curves.bounceIn,
//       );
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: const PreferredSize(
//         //   preferredSize: Size.fromHeight(55),
//         //   child: AppBarMain(),
//         // ),
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.all(tDefaultSize),
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         padding: const EdgeInsets.fromLTRB(0, 80.0, 0.0, 0.0),
//                         child: Center(
//                           child: Text(
//                             tLogin,
//                             style: TextStyle(
//                                 fontSize: 30, fontWeight: FontWeight.w700),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Container(
//                       padding: const EdgeInsets.only(
//                           top: 35.0, left: 20.0, right: 20.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           const SizedBox(height: 10.0),
//                           TextField(
//                             // //controller: emailController,
//                             onChanged: (val) {
//                               setState(() {
//                                 user.email = val;
//                               });
//                             },
//                             decoration: const InputDecoration(
//                                 labelText: 'Email',
//                                 labelStyle: TextStyle(
//                                     fontFamily: 'Montserrat',
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.grey),
//                                 // hintText: 'EMAIL',
//                                 // hintStyle: ,
//                                 focusedBorder: UnderlineInputBorder(
//                                     borderSide:
//                                         BorderSide(color: Colors.blue))),
//                           ),
//                           const SizedBox(height: 10.0),
//                           TextField(
//                             //controller: pswdController,
//                             onChanged: (val) {
//                               setState(() {
//                                 user.password = val;
//                               });
//                             },
//                             decoration: const InputDecoration(
//                                 labelText: 'Password',
//                                 labelStyle: TextStyle(
//                                     fontFamily: 'Montserrat',
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.grey),
//                                 focusedBorder: UnderlineInputBorder(
//                                     borderSide:
//                                         BorderSide(color: Colors.blue))),
//                             //obscureText: true,
//                           ),
//                           // const Padding(
//                           //   padding: EdgeInsets.only(top: 24.0),
//                           //   child: Text(
//                           //     "Login Failed. Try Again!",
//                           //     style: TextStyle(
//                           //         color: Colors.red, fontWeight: FontWeight.w500),
//                           //   ),
//                           // ),
//                           const SizedBox(height: 30.0),
//                           // ignore: sized_box_for_whitespace
//                           Container(
//                               height: 40.0,
//                               child: Material(
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 shadowColor: Colors.blueAccent,
//                                 color: ColorConstants.blue,
//                                 elevation: 7.0,
//                                 child: InkWell(
//                                   onTap: () {
//                                     setState(() {
//                                       isLoading = true;
//                                     });
//                                     _loginWithEmailAndPassword();
//                                   },
//                                   child: isLoading
//                                       ? const Center(
//                                           child: SizedBox(
//                                             height: 15,
//                                             width: 15,
//                                             child: CircularProgressIndicator(
//                                               strokeWidth: 3,
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                         )
//                                       : const Center(
//                                           child: Text(
//                                             tLogin,
//                                             style:
//                                                 TextStyle(color: Colors.white),
//                                           ),
//                                         ),
//                                 ),
//                               )),
//                           addVerticalSpace(20),
//                         ],
//                       )),
//                   const SizedBox(height: 15.0),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       const Text(
//                         tSignUpQuestion,
//                       ),
//                       TextButton(
//                         child: Text(tSignUp,
//                             style: TextStyle(
//                               color: ColorConstants.blue,
//                               fontWeight: FontWeight.bold,
//                               decoration: TextDecoration.underline,
//                             )),
//                         onPressed: () => Get.to(() => const UserSignUpPage()),
//                       )
//                     ],
//                   )
//                 ]),
//           ),
//         ));
//   }
// }
