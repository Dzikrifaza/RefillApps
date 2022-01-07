import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refill_apps/login/landing.dart';
import 'package:refill_apps/order/order_controller.dart';

class CreateOrder extends StatelessWidget {
  final controller = Get.find<OrderController>();
  final controllerPut = Get.put(OrderController());

  clearInputText() {
    controller.namaController.clear();
    controller.alamatController.clear();
    controller.namaBarangController.clear();
    controller.keteranganController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Order'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: controller.namaController,
                decoration: InputDecoration(labelText: 'Nama Lengkap'),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: controller.alamatController,
                decoration: InputDecoration(labelText: 'Alamat Lengkap'),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: controller.namaBarangController,
                decoration: InputDecoration(labelText: 'Nama Barang'),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: controller.keteranganController,
                decoration: InputDecoration(labelText: 'Keterangan'),
              ),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  controller.createOrder();
                  clearInputText();
                  Get.to(LandingPage());
                },
              ),
            ],
          ),
        ));
  }
}
