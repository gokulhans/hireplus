import 'package:flutter/material.dart';
import 'package:hireplus/utils/color_constants.dart';
import 'package:hireplus/utils/constants.dart';

class BuildBoxShadowContainer extends StatelessWidget {
  final Widget child;
  const BuildBoxShadowContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: ColorConstants.boxShadowColor,
            blurRadius: kBlurRadius6,
            offset: Offset(kOffsetX0, kOffsetY1),
          ),
        ],
      ),
      child: child,
    );
  }
}
