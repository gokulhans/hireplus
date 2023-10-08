import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hireplus/components/containers/buildboxcolorcontainer.dart';
import 'package:hireplus/components/containers/buildboxshadowcontainer.dart';
import 'package:hireplus/utils/color_constants.dart';
import 'package:hireplus/utils/widget_functions.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BuildBoxColorContainer(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildBoxShadowContainer(
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value;
                  });
                },
              ),
            ),
            addVerticalSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Popular Job',
                  style: GoogleFonts.poppins(
                    color: ColorConstants.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 1,
                  ),
                ),
                Text(
                  'Show All',
                  style: GoogleFonts.poppins(
                    color: ColorConstants.textColor,
                    fontSize: 12,
                    height: 1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
