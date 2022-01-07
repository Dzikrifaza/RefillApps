import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refill_apps/create_page.dart';
import 'package:refill_apps/refill_controller.dart';
// import 'package:refill_apps/Screens/Login/login_screen.dart';
// import 'package:refill_apps/Screens/Signup/signup_screen.dart';
import 'package:refill_apps/style/rounded_button.dart';
import 'package:refill_apps/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:refill_apps/home/background.dart';

class Body extends StatelessWidget {
  final controller = Get.put(RefillController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Refill Home',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 30,
                  decoration: TextDecoration.none),
            ),
            SvgPicture.asset(
              "assets/images/home_page.svg",
              height: size.height * 0.45,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.of(context).pushNamed('/login-page');
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.of(context).pushNamed('/register-page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
