import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App_Routes/app_routes.dart';

class CustomButttonDesign extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButttonDesign({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff139F25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}
