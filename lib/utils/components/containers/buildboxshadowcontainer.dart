import 'package:flutter/material.dart';

class BuildBoxShadowContainer extends StatelessWidget {
  final Widget child;
  const BuildBoxShadowContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3.0,
            offset: Offset(0, .1),
          ),
        ],
      ),
      child: child,
    );
  }
}
