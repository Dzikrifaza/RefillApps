// ignore_for_file: unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:refill_apps/home/body.dart';
import 'package:refill_apps/login/akun.dart';
import 'package:refill_apps/login/produk.dart';
import 'package:refill_apps/screens/home/home_screen.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new HomeScreen(), new Produk(), new Akun()];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.home,
                color: Colors.red,
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: new Text('Beranda',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 0
                          ? Colors.red
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.assignment,
                color: Colors.red,
              ),
              icon: new Icon(
                Icons.assignment,
                color: Colors.grey,
              ),
              title: new Text('Produk',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 1
                          ? Colors.red
                          : Colors.grey)),
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.people,
                color: Colors.red,
              ),
              icon: new Icon(
                Icons.people,
                color: Colors.grey,
              ),
              title: new Text('Akun',
                  style: TextStyle(
                      color: _bottomNavCurrentIndex == 2
                          ? Colors.red
                          : Colors.grey)),
            ),
          ],
        ));
  }
}
