import 'package:flutter/material.dart';

AppBar FoodieAppbar({required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(fontFamily: "logo", fontSize: 32),
    ),
  );
}
