import 'package:flutter/material.dart';
import 'package:hireplusapp/resources/constants.dart';
import 'package:hireplusapp/utils/color_constants.dart';

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
