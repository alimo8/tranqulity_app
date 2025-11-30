import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/ui/app_button.dart';
import 'package:tranqulity/core/ui/app_input.dart';
import 'package:tranqulity/core/ui/app_back.dart';

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({super.key});

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordViewState();
}

class _CreateNewPasswordViewState extends State<CreateNewPasswordView> {
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
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
                AppBack(),
                SizedBox(height: 280.h),
                Text('Create New Password', style: TextStyle(fontSize: 24.sp)),
                Text(
                  'create your new password to log in !',
                  style: TextStyle(fontSize: 16.sp),
                ),
                SizedBox(height: 28.h),
                AppInput(
                  labelText: 'Password',
                  controller: passwordController,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter the password';
                    }
                    return null;
                  },
                ),
                AppInput(
                  labelText: 'Confirm Password',
                  controller: confirmPasswordController,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter the password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 60.h),
                AppButton(
                  text: 'Forget Password',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  height: 60.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
