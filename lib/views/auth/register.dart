import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/ui/app_button.dart';
import 'package:tranqulity/core/ui/app_input.dart';
import 'package:tranqulity/core/ui/app_login_or_register.dart';
import 'package:tranqulity/core/ui/custom_%20dropdown_button.dart';
import 'package:tranqulity/core/ui/custom_back_button.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final userNameController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
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

                Center(
                  child: SizedBox(
                    width: 260.r,
                    height: 260.r,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 130.r,
                            backgroundColor: Colors.grey.shade300,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.photo_camera_rounded,
                                size: 100.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -1.r,
                          bottom: 3.r,
                          child: CircleAvatar(
                            radius: 30.r,
                            backgroundColor: Color(0xff284243),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 25.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                AppInput(
                  labelText: 'Username',
                  controller: userNameController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter your Username';
                    }
                    return null;
                  },
                ),

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
                  labelText: 'Age',
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please, Enter your Age';
                    }
                    return null;
                  },
                ),
                CustomDropdownButton(),

                SizedBox(height: 16.h),

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
                  alignment: AlignmentDirectional.centerStart,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Confirm password ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 45.h),

                AppButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  },
                  height: 60.h,
                ),

                Align(
                  alignment: AlignmentDirectional.center,
                  child: AppLoginOrRegister(isLogin: false),
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
