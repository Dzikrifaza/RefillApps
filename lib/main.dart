import 'package:flutter/material.dart';
import 'package:refill_apps/create_page.dart';
import 'package:refill_apps/home.dart';
import 'package:refill_apps/intro.dart';
import 'package:refill_apps/login.dart';
import 'package:refill_apps/read_page.dart';
import 'package:get/get.dart';
import 'package:refill_apps/screens/home/home_screen.dart';
import 'package:refill_apps/widget/route.dart';
import 'package:sp_util/sp_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RoutePage(),
    ),
  );

// void main() async {
//   runApp(GetMaterialApp(
//     home: LoginPage(),
//   ));
}
