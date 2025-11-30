import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/ui/app_image.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.color,
    required this.text,
    this.height,
    this.width,
    this.onPressed,
    this.isMore = false,
    this.image,
  });
  final Color? color;
  final String text;
  final String? image;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;
  final bool isMore;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 55.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Color(0xff284243),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r), // ← Cancel radius
          ),
        ),
        child: Row(
          mainAxisAlignment: isMore
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            if (isMore) ...[AppImage(imageUrl: image!), SizedBox(width: 14.w)],
            Text(
              text,
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
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
