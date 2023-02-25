import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:motionhack/core/resources/colors.dart';

class CustomTextInput extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final validator;
  final controller;
  final TextInputType? keyboardType;
  final bool obsecureText;
  final onFieldSubmitted;

  const CustomTextInput({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.validator,
    this.controller,
    this.keyboardType,
    this.onFieldSubmitted,
    this.obsecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black.withOpacity(.2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
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
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obsecureText,
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}
