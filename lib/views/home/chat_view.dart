import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/ui/app_image.dart';
import 'package:tranqulity/views/home/pages/edit_profile.dart';
import 'package:tranqulity/views/home/pages/empty_chats.dart';
import 'package:tranqulity/views/home/pages/quotes.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  int currentIndex = 0;

  List<Widget> screens = [EmptyChats(), Quotes(), EditProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff284243),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: AppImage(imageUrl: 'chats.svg'),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: AppImage(imageUrl: 'quotes.svg'),
            label: 'Quotes',
          ),
          BottomNavigationBarItem(
            icon: AppImage(imageUrl: 'profile.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
