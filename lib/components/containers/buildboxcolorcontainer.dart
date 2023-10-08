import 'package:flutter/material.dart';
import 'package:hireplus/utils/color_constants.dart';
import 'package:hireplus/utils/constants.dart';

class BuildBoxColorContainer extends StatelessWidget {
  final Widget child;
  const BuildBoxColorContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: kTilePadding20),
        height: double.infinity,
        color: ColorConstants.appbgclr,
        child: child);
  }
}
