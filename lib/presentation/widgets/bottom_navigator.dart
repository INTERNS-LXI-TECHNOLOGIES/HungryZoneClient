import 'package:flutter/material.dart';

import '../../const/const.dart';

ValueNotifier<int> indexNotifier = ValueNotifier(0);

class BottombarWidgets extends StatelessWidget {
  const BottombarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            backgroundColor: kGreen,
            currentIndex: newIndex,
            selectedItemColor: Colors.white,
            selectedFontSize: 15,
            unselectedItemColor: Colors.white54,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              indexNotifier.value = index;
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag),
                label: 'Bag',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              )
            ]);
      },
    );
  }
}
