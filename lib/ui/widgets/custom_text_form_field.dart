// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String title;
  final bool obscureText;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.title,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
