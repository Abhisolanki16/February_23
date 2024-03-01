import 'package:flutter/material.dart';
import 'package:twenty_three/categories.dart';
import 'package:twenty_three/colors.dart';
import 'package:twenty_three/home.dart';
import 'package:twenty_three/switch_checkbox.dart';
import 'right_drawer.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> category = ['All', 'Hp', 'Dell', 'lenovo', 'Acer', 'Zebronics'];
  AppColors colors = AppColors();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Categories());
  }
}
