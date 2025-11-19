import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/ui/app_button.dart';
import 'package:tranqulity/core/ui/app_input.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
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
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.h),
                AppInput(
                  controller: passwordController,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter the password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12.h),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {},
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

                SizedBox(height: 30.h),
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t have an account?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [],
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: TextButton(
                            onPressed: () {
                              // goTo(RegisterView());
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(color: Color(0xff284243)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
