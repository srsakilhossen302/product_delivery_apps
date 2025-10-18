import 'package:flutter/material.dart';

class ContinueWithGoogleButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ContinueWithGoogleButton({
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
          backgroundColor: const Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
            side: const BorderSide(
              color: Color(0xffD7D7D7),
              width: 1,
            ),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Google Logo
            Image.asset(
              'assets/images/img_3.png',
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 12),
            // Text
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff333333),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
