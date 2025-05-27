import 'package:flutter/material.dart';

class AdaptiveBlock extends StatelessWidget {
  final List<Widget> children;
  final double breakpoint;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const AdaptiveBlock({
    required this.children,
    super.key,
    this.breakpoint = 600,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > breakpoint) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: children
            );
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: children
              );
          }
        },
      );
  }
}
