import 'package:flutter/material.dart';

class CustomAppbar extends AppBar {
  CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('home'),
    );
  }
}
