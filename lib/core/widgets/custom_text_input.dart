import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:motionhack/core/resources/colors.dart';

class CustomTextInput extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;

  const CustomTextInput({
    super.key,
    this.hintText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(.2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: BaseColors.primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hintText,
      ),
      cursorColor: BaseColors.primaryColor,
    );
  }
}
