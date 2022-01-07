import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refill_apps/refill_controller.dart';
import 'package:refill_apps/refill_model.dart';

class UpdatePage extends StatelessWidget {
  final controller = Get.find<RefillController>();

  final Refill refill;

  UpdatePage(this.refill);

  @override
  Widget build(BuildContext context) {
    controller.namaController.text = refill.namaUser;
    controller.usernameController.text = refill.username;
    controller.emailController.text = refill.email;
    controller.passwordController.text = refill.password;

    clearInputText() {
      controller.namaController.clear();
      controller.usernameController.clear();
      controller.emailController.clear();
      controller.passwordController.clear();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Update User'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: controller.namaController,
                decoration: InputDecoration(labelText: 'Nama'),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: controller.usernameController,
                decoration: InputDecoration(labelText: 'Username'),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: controller.emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: controller.passwordController,
                decoration: InputDecoration(labelText: 'Password'),
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  controller.updateUser(refill.idUser);
                  clearInputText();
                  Get.back();
                },
              ),
            ],
          ),
        ));
  }
}
