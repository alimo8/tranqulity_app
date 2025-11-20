import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/logic/helper_methods.dart';
import 'package:tranqulity/core/ui/app_button.dart';
import 'package:tranqulity/core/ui/app_input.dart';
import 'package:tranqulity/core/ui/app_login_or_register.dart';
import 'package:tranqulity/views/auth/forget_password.dart';
import 'package:tranqulity/views/auth/widget/social_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
            ).copyWith(top: 250.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome To', style: TextStyle(fontSize: 20.sp)),
                SizedBox(height: 6.h),
                Text(
                  'Tranquility',
                  style: TextStyle(
                    color: const Color(0xff284243),
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MysteryQuest',
                  ),
                ),
                SizedBox(height: 10.h),
                AppInput(
                  labelText: 'Phone Number',
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter phone number';
                    }
                    return null;
                  },
                ),
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
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {
                      goTo(ForgetPasswordView());
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 56.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Icon(Icons.fingerprint_outlined),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: AppButton(
                        text: 'Login',
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        height: 60.h,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: AppLoginOrRegister(),
                ),
                SizedBox(height: 24.h),
                SocialButton(
                  color: Colors.green.shade400,
                  icon: 'google.png',
                  text: 'Login With Google',
                ),
                SizedBox(height: 16.h),
                SocialButton(
                  color: Color(0xff518EF8),
                  icon: 'facebook.png',
                  text: 'Login With Google',
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
