import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({Key? key}) : super(key: key);

  final List<dynamic> drawerList = [
    {
      'icon': const Icon(Icons.ac_unit_outlined),
      'title': Text('Home'),
      'route': getRouteName(RoutesNames.INITIAL),
    },
    {
      'icon': const Icon(Icons.ac_unit_outlined),
      'title': Text('Meus ingredientes'),
      'route': getRouteName(RoutesNames.MY_INGREDIENTS),
    },
    {
      'icon': const Icon(Icons.ac_unit_outlined),
      'title': Text('Minhas receitas'),
      'route': getRouteName(RoutesNames.MY_RECIPES),
    },
    {
      'icon': const Icon(Icons.ac_unit_outlined),
      'title': Text('Tipos de refeição'),
      'route': getRouteName(RoutesNames.MEALS),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: drawerList.length,
        itemBuilder: (context, index) => ListTile(
          leading: drawerList[index]['icon'],
          title: drawerList[index]['title'],
          onTap: () {
            Navigator.pushNamed(context, drawerList[index]['route']);
          },
        ),
      ),
      // ListView(
      //   children: [
      //     DrawerHeader(
      //       child: Text(''),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.ac_unit_outlined),
      //       title: Text('Home'),
      //       onTap: () {
      //         Navigator.pushNamed(context, getRouteName(RoutesNames.INITIAL));
      //       },
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.ac_unit_outlined),
      //       title: Text('Meus ingredientes'),
      //       onTap: () {
      //         Navigator.pushNamed(
      //             context, getRouteName(RoutesNames.MY_INGREDIENTS));
      //       },
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.ac_unit_outlined),
      //       title: Text('Minhas receitas'),
      //       onTap: () {
      //         Navigator.pushNamed(
      //             context, getRouteName(RoutesNames.MY_RECIPES));
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
