import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.color,
    required this.text,
    this.height,
    this.width,
    this.onPressed,
  });
  final Color? color;
  final String text;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 55.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff284243),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r), // ← Cancel radius
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      //  FilledButton(
      //   onPressed: onPressed,
      //   style: FilledButton.styleFrom(
      //     backgroundColor: color,
      //     visualDensity: VisualDensity.compact,
      //   ),
      //   child: Text(text),
      // ),
    );
  }
}
