import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/logic/helper_methods.dart';
import 'package:tranqulity/core/ui/app_image.dart';
import 'package:tranqulity/views/auth/login.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;

  goToLoginPage() {
    goTo(LoginView(), canPop: false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppImage(
                imageUrl: _list[currentIndex].imageUrl,
                height: 600.h,
                width: 430.w,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Text(
                  _list[currentIndex].title,
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Text(
                  _list[currentIndex].subTitle,
                  style: TextStyle(fontSize: 18.sp),
                ),
              ),
              SizedBox(height: 64.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    currentIndex != 2
                        ? TextButton(
                            onPressed: () {
                              setState(() {
                                goToLoginPage();
                              });
                            },
                            child: Text('Skip'),
                          )
                        : SizedBox.shrink(),
                    CircleAvatar(
                      radius: 30.r,
                      backgroundColor: Color(0xff284243),
                      child: IconButton(
                        onPressed: () {
                          currentIndex != 2
                              ? setState(() {
                                  currentIndex++;
                                })
                              : goToLoginPage();
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _Model {
  final String imageUrl;
  final String title;
  final String subTitle;

  _Model({required this.imageUrl, required this.title, required this.subTitle});
}

final _list = [
  _Model(
    imageUrl: 'on_boarding1.png',
    title: 'Feel Free',
    subTitle:
        'because I\'m the friendly chatbot here to assist you with anything you need.',
  ),
  _Model(
    imageUrl: 'on_boarding2.png',
    title: 'Ask For Anything',
    subTitle:
        'I\'m your friendly neighborhood chatbot ready to assist you with any questions or concerns.',
  ),
  _Model(
    imageUrl: 'on_boarding3.png',
    title: 'Your Secert is Save',
    subTitle: 'Our platform prioritizes your privacy and security',
  ),
];
