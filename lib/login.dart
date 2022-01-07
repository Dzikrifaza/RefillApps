import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:refill_apps/create_page.dart';
import 'package:refill_apps/home.dart';
import 'package:refill_apps/model/LoginModel.dart';
import 'package:refill_apps/refill_controller.dart';
import 'package:refill_apps/style/already_have_an_account_acheck.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart' as http;
import 'package:sp_util/sp_util.dart';
import 'package:get/get.dart';
import 'widget/route.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(RefillController());

  TextEditingController txtemail = new TextEditingController();
  TextEditingController txtpassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/login.png'),
                  TextFormField(
                    controller: txtemail,
                    decoration: InputDecoration(hintText: "Masukkan Email"),
                  ),
                  TextFormField(
                    controller: txtpassword,
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Masukkan Password"),
                  ),
                  ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        this._doLogin();
                      },
                      color: Colors.purple,
                      child:
                          Text("Login", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreatePage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _doLogin() async {
    if (txtemail.text.isEmpty || txtpassword.text.isEmpty) {
      Alert(
        context: context,
        title: "Data Tidak Benar",
        type: AlertType.error,
      ).show();
      return;
    }

    ProgressDialog progressdialog = ProgressDialog(context);
    progressdialog.style(message: "Loading...");
    progressdialog.show();
    final response =
        await http.post(Uri.parse('http://192.168.100.207:8080/login'), body: {
      'email': txtemail.text.toString(),
      'password': txtpassword.text.toString(),
    }, headers: {
      'Accept': 'application/json'
    });

    progressdialog.hide();
    if (response.statusCode == 200) {
      var res = json.decode(response.body);
      if (res['sucess'] == true) {
        final loginModel = loginModelFromJson(response.body);
        var token = loginModel.data.apiToken;
        SpUtil.putString("apiToken", token);
        SpUtil.putString("namaUser", loginModel.data.login.namaUser);
        SpUtil.putString("username", loginModel.data.login.username);
        SpUtil.putString("email", loginModel.data.login.email);
        SpUtil.putString("password", loginModel.data.login.password);
        SpUtil.putBool('isLogin', true);
        Navigator.of(context).pushNamed('/landing-page');
      } else {
        Alert(context: context, title: "Login Gagal", type: AlertType.error)
            .show();
      }

      // Alert(context: context, title: "Login Berhasil", type: AlertType.success)
      //     .show();
    } else {
      Alert(context: context, title: "Login Gagal", type: AlertType.error)
          .show();
    }
  }
}
