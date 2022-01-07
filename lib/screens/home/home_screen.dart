import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:refill_apps/constants.dart';
import 'package:refill_apps/login.dart';
import 'package:refill_apps/screens/home/components/body.dart';
import 'package:sp_util/sp_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              // By default our  icon color is white
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          // IconButton(
          //   icon: SvgPicture.asset(
          //     "assets/icons/cart.svg",
          //     // By default our  icon color is white
          //     color: kTextColor,
          //   ),
          //   onPressed: () {},
          // ),
          // IconButton(
          //   icon: SvgPicture.asset(
          //     "assets/images/logout.svg",
          //     // By default our  icon color is white
          //     color: kTextColor,
          //   ),
          //   onPressed: () {
          //     SpUtil.clear();
          //     Navigator.pushReplacementNamed(context, "login-page");
          //   },
          // ),
          SizedBox(width: kDefaultPaddin / 2)
        ],
      ),
      body: Body(),
    );
  }
}
