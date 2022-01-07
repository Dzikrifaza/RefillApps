import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refill_apps/refill_controller.dart';

class CreatePage extends StatelessWidget {
  final controller = Get.find<RefillController>();
  final controllerPut = Get.put(RefillController());

  clearInputText() {
    controller.namaController.clear();
    controller.usernameController.clear();
    controller.emailController.clear();
    controller.passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Buat Registrasi'),
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
                  controller.create();
                  clearInputText();
                  Get.back();
                },
              ),
            ],
          ),
        ));
  }
}
