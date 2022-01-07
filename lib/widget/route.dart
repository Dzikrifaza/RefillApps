import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:refill_apps/create_page.dart';
import 'package:refill_apps/home.dart';
import 'package:refill_apps/intro.dart';
import 'package:refill_apps/login.dart';
import 'package:refill_apps/login/landing.dart';
import 'package:refill_apps/login/produk.dart';
import 'package:refill_apps/read_page.dart';
import 'package:refill_apps/screens/home/home_screen.dart';
import 'package:sp_util/sp_util.dart';

class RoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute:
          (SpUtil.getBool('isLogin')) ? '/landing-page' : '/introduction',
      routes: {
        '/login-page': (context) => LoginPage(),
        '/home-page': (context) => HomeScreen(),
        '/user-data': (context) => RefillPage(),
        '/introduction': (context) => IntroPage(),
        '/register-page': (context) => CreatePage(),
        '/landing-page': (context) => LandingPage(),
        '/order-page': (context) => Produk(),
        '/create-order-page': (context) => CreatePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
