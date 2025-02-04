import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard(
      {super.key,
      this.width,
      this.height,
      this.child,
      this.borderRadius,
      this.backgroundColor});

  final double? width;
  final double? height;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1), //(x,y)
            blurRadius: 1.0,

          ),
        ],
      ),
      child: child,
    );
  }
}
