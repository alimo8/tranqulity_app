import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/logic/helper_methods.dart';
import 'package:tranqulity/core/ui/app_button.dart';
import 'package:tranqulity/core/ui/app_input.dart';
import 'package:tranqulity/core/ui/app_login_or_register.dart';
import 'package:tranqulity/core/ui/custom_back_button.dart';
import 'package:tranqulity/views/auth/login.dart';
import 'package:tranqulity/views/auth/widget/social_button.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
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
                SizedBox(height: 285.h),
                Text('Forget Your Password', style: TextStyle(fontSize: 24.sp)),
                SizedBox(height: 34.h),
                AppInput(
                  labelText: 'Password',
                  bottomSpace: 50.h,
                  controller: passwordController,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter the password';
                    }
                    return null;
                  },
                ),

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
