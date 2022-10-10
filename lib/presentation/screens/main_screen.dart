import 'package:flutter/material.dart';

import '../widgets/bottom_navigator.dart';
import 'bag_screen.dart';
import 'chat/chat_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final _screens = [
    const HomeScreen(),
    //const LocationScreen(),
    const ChatScreen(),
    const BagScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexNotifier,
            builder: (context, int index, _) {
              debugPrint("$index");
              return _screens[index];
            }),
      ),
      bottomNavigationBar: const BottombarWidgets(),
    );
  }
}
