import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/ui/app_button.dart';
import 'package:tranqulity/core/ui/app_image.dart';
import 'package:tranqulity/core/ui/app_input.dart';

class EmptyChats extends StatelessWidget {
  const EmptyChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chats'), centerTitle: false),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250.w,
              decoration: BoxDecoration(
                color: Color(0xff284243),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25.r),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 130.h,
                    child: ClipOval(child: AppImage(imageUrl: 'person.jpeg')),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Ali',
                    style: TextStyle(color: Colors.white, fontSize: 24.sp),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '01551713043',
                    style: TextStyle(color: Colors.white, fontSize: 24.sp),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AppButton(
                isMore: true,
                image: 'about_us.svg',
                text: 'About Us',
                onPressed: () {},
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AppButton(
                isMore: true,
                image: 'rate.svg',

                text: 'Rate Our App',
                onPressed: () {},
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AppButton(
                isMore: true,
                image: 'suggestions.svg',

                text: 'Suggestions',
                onPressed: () {},
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AppButton(
                isMore: true,
                image: 'enable_easy_login.svg',

                text: 'Enable Easy Login',
                onPressed: () {},
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AppButton(
                isMore: true,
                image: 'log_out.svg',

                text: 'Logout',
                onPressed: () {},
                color: Colors.red.shade200,
              ),
            ),
          ],
        ),
      ),

      // body: Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       AppImage(imageUrl: 'chats.svg'),
      //       Text(
      //         'You don’t have any Chats yet.',
      //         style: TextStyle(fontSize: 20),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
