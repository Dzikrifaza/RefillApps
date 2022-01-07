// ignore_for_file: unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refill_apps/login.dart';
import 'package:refill_apps/refill_controller.dart';
import 'package:refill_apps/update_user.dart';
import 'package:sp_util/sp_util.dart';

class Akun extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Akun> {
  final controller = Get.put(RefillController());
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: SafeArea(
      child: new Container(
          color: Colors.white,
          child: Center(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      backgroundColor: Colors.grey,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                  padding: EdgeInsets.only(
                                      left: 15.0,
                                      right: 5.0,
                                      top: 15.0,
                                      bottom: 10.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Nama User : " +
                                              SpUtil.getString("namaUser"),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Username   : " +
                                              SpUtil.getString("username"),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Email           : " +
                                              SpUtil.getString("email"),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        ButtonTheme(
                                          minWidth: double.infinity,
                                          child: RaisedButton(
                                            onPressed: () {
                                              SpUtil.clear();
                                              Get.to(LoginPage());
                                            },
                                            color: Colors.purple,
                                            child: Text("Logout",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ),
                                      ])),
                            ),
                          ),
                        ]),
                  ]),
            ),
          )),
    ));
  }
}
