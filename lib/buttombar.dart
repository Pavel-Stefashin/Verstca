import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.eye),
            label: 'Каталог',
            backgroundColor: Color.fromRGBO(110, 66, 190, 0.8274509803921568)
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Корзина',
            backgroundColor: Color.fromRGBO(110, 66, 190, 0.8274509803921568)
        ),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.mail),
            label: 'Избранное',
            backgroundColor: Color.fromRGBO(110, 66, 190, 0.8274509803921568)
        ),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.location),
            label: 'Профиль',
            backgroundColor: Color.fromRGBO(110, 66, 190, 0.8274509803921568)
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
