import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/ui/app_button.dart';
import 'package:tranqulity/core/ui/app_verfiy_code.dart';
import 'package:tranqulity/core/ui/custom_back_button.dart';

class OtpView extends StatelessWidget {
  OtpView({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(),
                SizedBox(height: 240.h),

                Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Please enter the code sent on your phone.',
                  style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                ),

                SizedBox(height: 36.h),
                AppVerfiyCode(),
                SizedBox(height: 50.h),
                AppButton(
                  text: 'Forget Password',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  height: 60.h,
                ),
                SizedBox(height: 43.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
