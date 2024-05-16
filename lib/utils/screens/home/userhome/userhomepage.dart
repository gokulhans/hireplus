// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hireplus/components/containers/buildboxcolorcontainer.dart';
// import 'package:hireplus/components/containers/buildboxpaddingcontainer.dart';
// import 'package:hireplus/components/containers/buildboxshadowcontainer.dart';
// import 'package:hireplus/utils/color_constants.dart';
// import 'package:hireplus/utils/widget_functions.dart';

// class UserHomePage extends StatefulWidget {
//   const UserHomePage({super.key});

//   @override
//   State<UserHomePage> createState() => _UserHomePageState();
// }

// class _UserHomePageState extends State<UserHomePage> {
//   final TextEditingController _searchController = TextEditingController();
//   String _searchQuery = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: BuildBoxColorContainer(
//       child: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             addVerticalSpace(10),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: BuildBoxShadowContainer(
//                 child: TextField(
//                   controller: _searchController,
//                   decoration: const InputDecoration(
//                     labelText: 'Search',
//                     hintText: 'Search...',
//                     prefixIcon: Icon(Icons.search),
//                     border: InputBorder.none,
//                     focusedBorder: InputBorder.none,
//                   ),
//                   onChanged: (value) {
//                     setState(() {
//                       _searchQuery = value;
//                     });
//                   },
//                 ),
//               ),
//             ),
//             addVerticalSpace(30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Popular Job',
//                   style: GoogleFonts.poppins(
//                     color: ColorConstants.textColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                     height: 1,
//                   ),
//                 ),
//                 Text(
//                   'Show All',
//                   style: GoogleFonts.poppins(
//                     color: ColorConstants.textColor,
//                     fontSize: 12,
//                     height: 1,
//                   ),
//                 )
//               ],
//             ),
//             addVerticalSpace(20),
//             SizedBox(
//               height: 160,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 physics: const BouncingScrollPhysics(),
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   return BuildBoxPaddingContainer(
//                     child: BuildBoxShadowContainer(
//                       child: TextButton(
//                         onPressed: () {},
//                         child: Container(
//                           height: 160,
//                           width: 260,
//                           margin: const EdgeInsets.symmetric(horizontal: 10.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Column(
//                                     children: [
//                                       Container(
//                                         width: 40,
//                                         height: 40,
//                                         clipBehavior: Clip.hardEdge,
//                                         decoration: BoxDecoration(
//                                           color: const Color(0xFFE4F2FF),
//                                           borderRadius:
//                                               BorderRadius.circular(13),
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Image.network(
//                                             'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fe7Q8uFeQOrMBBHu4P234%2F737fde13b7200138a8239d02f7cedcbe.png',
//                                             width: 19,
//                                             height: 19,
//                                             fit: BoxFit.contain,
//                                           ),
//                                         ),
//                                       ),
//                                       addVerticalSpace(10),
//                                       Text(
//                                         'Google',
//                                         textAlign: TextAlign.center,
//                                         style: GoogleFonts.getFont(
//                                           'Poppins',
//                                           color: const Color(0xFF6A6A6A),
//                                           fontSize: 12,
//                                           height: 1,
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                   Image.network(
//                                     'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fe7Q8uFeQOrMBBHu4P234%2Ff94a973662aa76759ff5c7463868751e.png',
//                                     width: 30,
//                                     height: 30,
//                                     fit: BoxFit.contain,
//                                   )
//                                 ],
//                               ),
//                               Text(
//                                 'Lead Product Manager',
//                                 style: GoogleFonts.poppins(
//                                   color: const Color(0xFF151313),
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   height: 1,
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   Text(
//                                     '\$2500/m',
//                                     textAlign: TextAlign.center,
//                                     style: GoogleFonts.poppins(
//                                       color: ColorConstants.textColor,
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w600,
//                                       height: 1,
//                                     ),
//                                   ),
//                                   Text(
//                                     'Toronto, Canada',
//                                     textAlign: TextAlign.center,
//                                     style: GoogleFonts.poppins(
//                                       color: ColorConstants.textColor,
//                                       fontSize: 12,
//                                       height: 1,
//                                     ),
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             addVerticalSpace(30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Recent Post',
//                   style: GoogleFonts.poppins(
//                     color: ColorConstants.textColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                     height: 1,
//                   ),
//                 ),
//                 Text(
//                   'Show All',
//                   style: GoogleFonts.poppins(
//                     color: ColorConstants.textColor,
//                     fontSize: 12,
//                     height: 1,
//                   ),
//                 )
//               ],
//             ),
//             addVerticalSpace(20),
//             ListView.builder(
//               physics: const NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: 5,
//               itemBuilder: (context, index) {
//                 return BuildBoxPaddingContainer(
//                   child: BuildBoxShadowContainer(
//                     child: TextButton(
//                       onPressed: () {},
//                       style: ButtonStyle(
//                         padding: MaterialStateProperty.all(EdgeInsets.zero),
//                       ),
//                       child: ListTile(
//                         leading: Container(
//                           width: 50,
//                           height: 50,
//                           clipBehavior: Clip.hardEdge,
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF4460A0),
//                             borderRadius: BorderRadius.circular(15),
//                           ),
//                           child: Center(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Image.network(
//                                 'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2Fe7Q8uFeQOrMBBHu4P234%2Fa87514d43157c3fbfb9c1cdd85830352.png',
//                                 width: 13,
//                                 height: 26,
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                           ),
//                         ),
//                         title: Text(
//                           'UI/UX Designer',
//                           style: GoogleFonts.getFont(
//                             'Poppins',
//                             color: const Color(0xFF1A1D1E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             height: 1,
//                           ),
//                         ),
//                         subtitle: Text(
//                           'Full Time',
//                           style: GoogleFonts.getFont(
//                             'Poppins',
//                             color: const Color(0xFF6A6A6A),
//                             fontSize: 12,
//                             height: 1,
//                           ),
//                         ),
//                         trailing: Text(
//                           '\$4500/m',
//                           style: GoogleFonts.getFont(
//                             'Poppins',
//                             color: const Color(0xFF6A6A6A),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w500,
//                             height: 1,
//                           ),
//                         ), // Trailing icon (optional)
//                         onTap: () {
//                           // Handle onTap action
//                           print('ListTile tapped');
//                         },
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
