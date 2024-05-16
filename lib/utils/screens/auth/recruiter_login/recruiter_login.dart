// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hireplus/models/recruitermodel.dart';
// import 'package:hireplus/screens/auth/recruiter_signup/recruiter_signup.dart';
// import 'package:hireplus/screens/home/recruiterhome/recruiterhomescreen.dart';
// import 'package:hireplus/utils/text_strings.dart';
// import 'package:hireplus/utils/color_constants.dart';
// import 'package:hireplus/utils/sizes.dart';
// import 'package:hireplus/utils/widget_functions.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// bool isLoading = false;

// class RecruiterLoginPage extends StatefulWidget {
//   const RecruiterLoginPage({super.key});

//   @override
//   State<RecruiterLoginPage> createState() => _RecruiterLoginPageState();
// }

// class _RecruiterLoginPageState extends State<RecruiterLoginPage> {
//   RecruiterModel user = RecruiterModel("", "", "", "");

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
//       await pref.setString('recruitername', user.name);
//       await pref.setString('recruiteremail', user.email);
//       await pref.setString('recruiterid', credential.user!.uid);
//       await pref.setBool('recruiter', true);

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

//       Get.offAll(() => const RecruiterHomeScreen());
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
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.all(tDefaultSize),
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Stack(
//                     children: <Widget>[
//                       Container(
//                         padding:
//                             const EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
//                         child: const Center(
//                           child: Text(
//                             tOwnerLogin,
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
//                           TextField(
//                             //controller: emailController,
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
//                                         BorderSide(color: Colors.green))),
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
//                                         BorderSide(color: Colors.green))),
//                             //obscureText: true,
//                           ),
//                           // const Padding(
//                           //   padding: EdgeInsets.only(top:24.0),
//                           //   child: Text("Login Failed. Try Again!",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500),),
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
//                         tOwnerSignUpQuestion,
//                       ),
//                       TextButton(
//                         child: Text(tOwnerSignUp,
//                             style: TextStyle(
//                               color: ColorConstants.blue,
//                               fontWeight: FontWeight.bold,
//                               decoration: TextDecoration.underline,
//                             )),
//                         onPressed: () =>
//                             Get.to(() => const RecruiterSignUpPage()),
//                       )
//                     ],
//                   )
//                 ]),
//           ),
//         ));
//   }
// }
