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
    return Container(
      width: width ?? MediaQuery.of(context).size.width * 0.8,
      height: height ?? MediaQuery.of(context).size.height * 0.8,
      padding: padding ?? const EdgeInsets.all(16.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > breakpoint) {
            return Row(children: children);
          } else {
            return Column(children: children);
          }
        },
      ),
    );
  }
}