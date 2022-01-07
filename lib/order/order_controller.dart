import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:refill_apps/model/Order.dart';
import 'package:refill_apps/refill_provider.dart';

class OrderController extends GetxController {
  var orderList = <Order>[].obs;

  var namaController = TextEditingController();
  var alamatController = TextEditingController();
  var namaBarangController = TextEditingController();
  var keteranganController = TextEditingController();

  final provider = RefillProvider();

  @override
  void onInit() {
    super.onInit();
    getAllOrder();
  }

  void getAllOrder() async {
    Response response = await provider.getAllOrder();
    // List<Refill> newRefillList =
    List<Order> newOrderList =
        (response.body as List<dynamic>).map((e) => Order.fromJson(e)).toList();
    orderList.assignAll(newOrderList);
  }

  void createOrder() async {
    Response response = await provider.createOrder({
      'nama_user': namaController.text,
      'alamat': alamatController.text,
      'nama_barang': namaBarangController.text,
      'keterangan': keteranganController.text,
    });
    getAllOrder();
  }

  void updateOrder(int id) async {
    Response response = await provider.updateOrder({
      'id_order': id,
      'nama_user': namaController.text,
      'alamat': alamatController.text,
      'nama_barang': namaBarangController.text,
      'keterangan': keteranganController.text,
    });
    getAllOrder();
  }

  void deleteOrder(int id) async {
    await provider.deleteOrder(<String, dynamic>{'id_order': id});
    getAllOrder();
  }
}
