import 'package:flutter/material.dart';
import 'package:motionhack/core/resources/gradient.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  Function()? onTap;

  CustomButton({super.key, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 53,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: BaseGradient.primaryGradient,
          borderRadius: BorderRadius.circular(8),
        ),
        child: child != null ? child : Container(),
      ),
    );
  }
}
