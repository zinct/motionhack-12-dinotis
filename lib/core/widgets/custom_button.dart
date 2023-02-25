import 'package:flutter/material.dart';
import 'package:motionhack/core/resources/gradient.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  Function()? onTap;
  final BoxDecoration? decoration;

  CustomButton({super.key, this.child, this.onTap, this.decoration});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 53,
        width: double.infinity,
        decoration: decoration == null
            ? BoxDecoration(
                gradient: BaseGradient.primaryGradient,
                borderRadius: BorderRadius.circular(8),
              )
            : decoration,
        child: child != null ? child : Container(),
      ),
    );
  }
}
