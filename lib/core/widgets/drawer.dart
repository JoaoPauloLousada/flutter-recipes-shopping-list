import 'package:flutter/material.dart';
import 'package:recipes_shopping_list/core/router/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(''),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, getRouteName(RoutesNames.INITIAL));
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('Meus ingredientes'),
            onTap: () {
              Navigator.pushNamed(
                  context, getRouteName(RoutesNames.MY_INGREDIENTS));
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_outlined),
            title: Text('Minhas receitas'),
            onTap: () {
              Navigator.pushNamed(
                  context, getRouteName(RoutesNames.MY_RECIPES));
            },
          ),
        ],
      ),
    );
  }
}
