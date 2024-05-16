import 'package:flutter/material.dart';

class BuildBoxPaddingContainer extends StatelessWidget {
  final Widget child;
  const BuildBoxPaddingContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: child,
    );
  }
}
