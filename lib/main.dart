import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/logic/helper_methods.dart';
import 'package:tranqulity/views/auth/create_new_password.dart';
import 'package:tranqulity/views/auth/otp.dart';
import 'package:tranqulity/views/home/chat_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Montserrat',
          // scaffoldBackgroundColor: Color(0xffD9D9D9),
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff284243)),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            // iconTheme: IconThemeData(color: Color(0xff434C6D)),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            errorBorder: buildBorder,
            focusedErrorBorder: buildBorder,
          ),
        ),
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        home: ChatView(),
      ),
    );
  }
}

OutlineInputBorder get buildBorder {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Colors.red, width: 1),
  );
}
