import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  Map<int, dynamic> target = {
    0: RoutesNames.INITIAL,
    1: RoutesNames.MY_RECIPES,
    2: RoutesNames.INITIAL,
  };

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.pushNamed(context, getRouteName(target[index]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Refeiçōes',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book),
          label: 'Receitas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: _onItemTapped,
    );
  }
}
