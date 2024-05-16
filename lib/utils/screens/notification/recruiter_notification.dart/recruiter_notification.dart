// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hireplus/components/appbar/appbarwithback.dart';
// import 'package:hireplus/utils/color_constants.dart';
// import 'package:hireplus/utils/sizes.dart';
// import 'package:hireplus/utils/widget_functions.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class RecruiterNotifications extends StatefulWidget {
//   const RecruiterNotifications({super.key});
//   @override
//   State<RecruiterNotifications> createState() => _RecruiterNotificationsState();
// }

// class _RecruiterNotificationsState extends State<RecruiterNotifications> {
//   final String userid = "";
//   // Future<http.Response>? _future;
//   // void onload() async {
//   //   SharedPreferences pref = await SharedPreferences.getInstance();
//   //   userid = pref.getString("userid");
//   //   setState(() {
//   //     _future =
//   //         http.get(Uri.parse('${apidomain}notification/create/u/$userid'));
//   //   });
//   // }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // onload();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const PreferredSize(
//         preferredSize: Size.fromHeight(55),
//         child: AppBarWithBack(
//           title: "Notifications",
//         ),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.symmetric(horizontal: tDefaultSize),
//         physics: const BouncingScrollPhysics(),
//         itemCount: 10,
//         itemBuilder: (BuildContext context, int i) {
//           return Container(
//             margin: const EdgeInsets.symmetric(vertical: 8),
//             decoration: BoxDecoration(
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 1.0,
//                   offset: Offset(0.0, 1.0),
//                 ),
//               ],
//               color: ColorConstants.appbgclr2,
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   width: 60,
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 12.0, vertical: 16),
//                   child: ClipRRect(
//                       borderRadius: BorderRadius.circular(12.0),
//                       child: Icon(
//                         Icons.notifications,
//                         size: 30,
//                         color: ColorConstants.iconclr,
//                       )),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: InkWell(
//                       // onTap: (() => {
//                       //       Get.to(() => const ShopBookingPage(),
//                       //           arguments: [
//                       //             data[i]['ownerid'],
//                       //             data[i]['type'],
//                       //             data[i]['storeid'],
//                       //             data[i]['name'],
//                       //             data[i]['price'],
//                       //             data[i]['storename'],
//                       //             data[i]['start'],
//                       //             data[i]['end'],
//                       //             data[i]['img'],
//                       //             data[i]['duration']
//                       //           ])
//                       //     }),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               // data[i]["message"],
//                               "",
//                               textAlign: TextAlign.left,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .subtitle1!
//                                   .copyWith(
//                                       color: ColorConstants.textclrw,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w500),
//                             ),
//                             addVerticalSpace(10),
//                             Text(
//                               // data[i]["title"],
//                               "",
//                               textAlign: TextAlign.left,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .subtitle2!
//                                   .copyWith(color: ColorConstants.textclr),
//                             ),
//                           ]),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
