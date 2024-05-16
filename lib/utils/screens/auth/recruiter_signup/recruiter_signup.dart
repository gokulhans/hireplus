// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hireplus/models/recruitermodel.dart';
// import 'package:hireplus/screens/auth/login/login.dart';
// import 'package:hireplus/screens/auth/recruiter_login/recruiter_login.dart';
// import 'package:hireplus/screens/home/recruiterhome/recruiterhomepage.dart';
// import 'package:hireplus/screens/home/recruiterhome/recruiterhomescreen.dart';
// import 'package:hireplus/screens/home/userhome/userhomescreen.dart';
// import 'package:hireplus/utils/color_constants.dart';
// import 'package:hireplus/utils/sizes.dart';
// import 'package:hireplus/utils/text_strings.dart';
// import 'package:hireplus/utils/widget_functions.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class RecruiterSignUpPage extends StatefulWidget {
//   const RecruiterSignUpPage({super.key});
//   @override
//   State<RecruiterSignUpPage> createState() => _RecruiterSignUpPageState();
// }

// class _RecruiterSignUpPageState extends State<RecruiterSignUpPage> {
//   RecruiterModel user = RecruiterModel("", "", "", "");
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore db = FirebaseFirestore.instance;

//   Future<void> _registerWithEmailAndPassword() async {
//     Color? msgclr;
//     String? msg;
//     String? msgdesc;

//     try {
//       UserCredential userCredential =
//           await _auth.createUserWithEmailAndPassword(
//         email: user.email,
//         password: user.password,
//       );

//       final userdata = {
//         'email': user.email,
//         'name': user.name,
//         'phone': user.phone,
//         'password': user.password,
//         'blockstatus': 'no'
//       };

//       db.collection("recruiters").add(userdata).then((documentSnapshot) =>
//           print("Added Data with ID: ${documentSnapshot.id}"));

//       msgclr = Colors.blue[400];
//       msg = "Signup Success";
//       msgdesc = "Account Created Successfully";

//       setState(() {
//         isFailed = false;
//       });

//       SharedPreferences pref = await SharedPreferences.getInstance();
//       await pref.setString('recruitername', user.name);
//       await pref.setString('recruiteremail', user.email);
//       await pref.setString('recruiterid', userCredential.user!.uid);
//       await pref.setBool('recruiter', true);

//       Get.offAll(() => const RecruiterHomeScreen());

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
//     } on FirebaseAuthException catch (e) {
//       print('Failed to register: $e');
//       msgclr = Colors.red[400];
//       msg = "Signup Failed";
//       msgdesc = "Email already in use";

//       setState(() {
//         isFailed = true;
//         isLoading = false;
//       });

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
//     }
//   }

//   bool isLoading = false;
//   bool isFailed = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: const PreferredSize(
//       //   preferredSize: Size.fromHeight(55),
//       //   child: AppBarMain(),
//       // ),
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Padding(
//           padding: const EdgeInsets.all(tDefaultSize),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 children: <Widget>[
//                   Container(
//                     padding: const EdgeInsets.fromLTRB(0, 80.0, 0.0, 0.0),
//                     child: const Center(
//                       child: Text(
//                         tOwnerSignUp,
//                         style: TextStyle(
//                             fontSize: 30, fontWeight: FontWeight.w700),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                   padding:
//                       const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       TextFormField(
//                         initialValue: "",
//                         // //controller: nameController,
//                         onChanged: (val) {
//                           user.name = val;
//                         },
//                         decoration: const InputDecoration(
//                             labelText: 'Name ',
//                             labelStyle: TextStyle(
//                                 fontFamily: 'Montserrat',
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey),
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.blue))),
//                       ),
//                       const SizedBox(height: 10.0),
//                       TextFormField(
//                         keyboardType: TextInputType.emailAddress,
//                         autovalidateMode: AutovalidateMode.onUserInteraction,
//                         validator: (value) {
//                           // Check if the entered text is a valid email address using a regex pattern
//                           if (value!.isEmpty ||
//                               !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
//                                   .hasMatch(value)) {
//                             return 'Please enter a valid email address';
//                           }
//                           return null;
//                         },
//                         // //controller: emailController,
//                         onChanged: (val) {
//                           user.email = val;
//                         },
//                         decoration: const InputDecoration(
//                             labelText: 'Email',
//                             labelStyle: TextStyle(
//                                 fontFamily: 'Montserrat',
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey),
//                             // hintText: 'EMAIL',
//                             // hintStyle: ,
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.blue))),
//                       ),
//                       TextField(
//                         // //controller: emailController,
//                         onChanged: (val) {
//                           user.phone = val;
//                         },
//                         keyboardType: TextInputType.number,
//                         decoration: const InputDecoration(
//                             labelText: 'Phone Number',
//                             labelStyle: TextStyle(
//                                 fontFamily: 'Montserrat',
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey),
//                             // hintText: 'EMAIL',
//                             // hintStyle: ,
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.blue))),
//                       ),
//                       //          Container(
//                       //   height: 80,
//                       //   padding: const EdgeInsets.symmetric(vertical: 12.0),
//                       //   clipBehavior: Clip.antiAlias,
//                       //   decoration: BoxDecoration(
//                       //     borderRadius: BorderRadius.circular(22),
//                       //   ),
//                       //   child: TextFormField(
//                       //     // //controller: locationController,
//                       //     // initialValue: widget.location,
//                       //     onChanged: (val) {
//                       //       users.location = val;
//                       //     },
//                       //     decoration: const InputDecoration(
//                       //       labelText: 'Location',
//                       //       labelStyle: TextStyle(
//                       //         fontSize: 14,
//                       //         fontFamily: 'Montserrat',
//                       //         fontWeight: FontWeight.bold,
//                       //         color: Colors.grey,
//                       //       ),
//                       //       // hintText: 'myshop..',
//                       //     ),
//                       //   ),
//                       // ),
//                       // TextFormField(
//                       //   // //controller: emailController,
//                       //   // initialValue: users.location,
//                       //   onChanged: (val) {
//                       //     users.location = val;
//                       //   },
//                       //   decoration: const InputDecoration(
//                       //       labelText: 'Address',
//                       //       labelStyle: TextStyle(
//                       //           fontFamily: 'Montserrat',
//                       //           fontWeight: FontWeight.bold,
//                       //           color: Colors.grey),
//                       //       // hintText: 'EMAIL',
//                       //       // hintStyle: ,
//                       //       focusedBorder: UnderlineInputBorder(
//                       //           borderSide: BorderSide(color: Colors.blue))),
//                       // ),
//                       // TextFormField(
//                       //   // //controller: emailController,
//                       //   // initialValue: users.location,
//                       //   onChanged: (val) {
//                       //     users.pincode = val;
//                       //   },
//                       //   keyboardType: TextInputType.number,
//                       //   decoration: const InputDecoration(
//                       //       labelText: 'Pincode',
//                       //       labelStyle: TextStyle(
//                       //           fontFamily: 'Montserrat',
//                       //           fontWeight: FontWeight.bold,
//                       //           color: Colors.grey),
//                       //       // hintText: 'EMAIL',
//                       //       // hintStyle: ,
//                       //       focusedBorder: UnderlineInputBorder(
//                       //           borderSide: BorderSide(color: Colors.blue))),
//                       // ),
//                       // const SizedBox(height: 10.0),
//                       TextFormField(
//                         // //controller: pswdController,
//                         onChanged: (val) {
//                           user.password = val;
//                         },
//                         autovalidateMode: AutovalidateMode.onUserInteraction,
//                         validator: (value) {
//                           if (value!.length < 6) {
//                             return 'Minimum 6 characters';
//                           }
//                           return null;
//                         },
//                         decoration: const InputDecoration(
//                             labelText: 'Password',
//                             labelStyle: TextStyle(
//                                 fontFamily: 'Montserrat',
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey),
//                             focusedBorder: const UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.green))),
//                       ),
//                       isFailed
//                           ? const Padding(
//                               padding: EdgeInsets.only(top: 24.0),
//                               child: Text(
//                                 "Sign Up Failed. Try Again!",
//                                 style: TextStyle(
//                                     color: Colors.red,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             )
//                           : Container(),
//                       addVerticalSpace(30),
//                       // ignore: sized_box_for_whitespace
//                       Container(
//                           height: 40.0,
//                           child: Material(
//                             borderRadius: BorderRadius.circular(20.0),
//                             shadowColor: Colors.blueAccent,
//                             color: ColorConstants.blue,
//                             elevation: 7.0,
//                             child: InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   isLoading = true;
//                                 });
//                                 _registerWithEmailAndPassword();
//                                 print("saved");
//                                 // if (users.email.isEmpty ||
//                                 //     !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
//                                 //         .hasMatch(users.email)) {
//                                 //   Get.snackbar(
//                                 //     "Invalid Email",
//                                 //     "Enter Valid Email Address",
//                                 //     icon: const Icon(Icons.person,
//                                 //         color: Colors.white),
//                                 //     snackPosition: SnackPosition.BOTTOM,
//                                 //     backgroundColor: Colors.red,
//                                 //     borderRadius: 12,
//                                 //     margin: const EdgeInsets.all(15),
//                                 //     colorText: Colors.white,
//                                 //     duration: const Duration(seconds: 3),
//                                 //     isDismissible: true,
//                                 //     dismissDirection:
//                                 //         DismissDirection.horizontal,
//                                 //     forwardAnimationCurve: Curves.bounceIn,
//                                 //   );
//                                 //   setState(() {
//                                 //     isLoading = false;
//                                 //   });
//                                 // } else if (users.name.isEmpty ||
//                                 //         users.email.isEmpty ||
//                                 //         users.pswd.isEmpty ||
//                                 //         users.phone.isEmpty
//                                 //     // users.location.isEmpty ||
//                                 //     // users.pincode.isEmpty
//                                 //     ) {
//                                 //   Get.snackbar(
//                                 //     "Fill Every Field",
//                                 //     "Fill every fields to continue",
//                                 //     icon: const Icon(Icons.person,
//                                 //         color: Colors.white),
//                                 //     snackPosition: SnackPosition.BOTTOM,
//                                 //     backgroundColor: Colors.red,
//                                 //     borderRadius: 12,
//                                 //     margin: const EdgeInsets.all(15),
//                                 //     colorText: Colors.white,
//                                 //     duration: const Duration(seconds: 3),
//                                 //     isDismissible: true,
//                                 //     dismissDirection:
//                                 //         DismissDirection.horizontal,
//                                 //     forwardAnimationCurve: Curves.bounceIn,
//                                 //   );
//                                 //   setState(() {
//                                 //     isLoading = false;
//                                 //   });
//                                 // } else {
//                                 //   signup_save(context);
//                                 // }
//                               },
//                               child: isLoading
//                                   ? const Center(
//                                       child: SizedBox(
//                                         height: 15,
//                                         width: 15,
//                                         child: CircularProgressIndicator(
//                                           strokeWidth: 3,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     )
//                                   : const Center(
//                                       child: Text(
//                                         tSignUp,
//                                         style: TextStyle(
//                                             color: Colors.white, fontSize: 15),
//                                       ),
//                                     ),
//                             ),
//                           )),
//                       addVerticalSpace(20),
//                     ],
//                   )),
//               const SizedBox(height: 15.0),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const Text(
//                     tLoginQuestion,
//                   ),
//                   TextButton(
//                     child: Text(tOwnerLogin,
//                         style: TextStyle(
//                           color: ColorConstants.blue,
//                           fontWeight: FontWeight.bold,
//                           decoration: TextDecoration.underline,
//                         )),
//                     onPressed: () => Get.to(() => const RecruiterLoginPage()),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
