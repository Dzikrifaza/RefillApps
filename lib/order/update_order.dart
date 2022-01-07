import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refill_apps/model/Order.dart';
import 'package:refill_apps/order/order_controller.dart';

class UpdateOrder extends StatelessWidget {
  final controller = Get.find<OrderController>();

  final Order order;

  UpdateOrder(this.order);

  @override
  Widget build(BuildContext context) {
    controller.namaController.text = order.namaUser;
    controller.alamatController.text = order.alamat;
    controller.namaBarangController.text = order.namaBarang;
    controller.keteranganController.text = order.keterangan;

    clearInputText() {
      controller.namaController.clear();
      controller.alamatController.clear();
      controller.namaBarangController.clear();
      controller.keteranganController.clear();
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Update Order'),
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
                  controller.updateOrder(order.idOrder);
                  clearInputText();
                  Get.back();
                },
              ),
            ],
          ),
        ));
  }
}
