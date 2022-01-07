import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:refill_apps/refill_model.dart';
import 'package:refill_apps/refill_provider.dart';
import 'refill_model.dart';

class RefillController extends GetxController {
  var refillList = <Refill>[].obs;

  var namaController = TextEditingController();
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final provider = RefillProvider();

  @override
  void onInit() {
    super.onInit();
    getAll();
  }

  void getAll() async {
    Response response = await provider.getAll();
    // List<Refill> newRefillList =
    List<Refill> newRefillList = (response.body as List<dynamic>)
        .map((e) => Refill.fromJson(e))
        .toList();
    refillList.assignAll(newRefillList);
  }

  void create() async {
    Response response = await provider.create({
      'nama_user': namaController.text,
      'username': usernameController.text,
      'email': emailController.text,
      'password': passwordController.text,
    });
    getAll();
  }

  void updateUser(int id) async {
    Response response = await provider.update({
      'id_user': id,
      'nama_user': namaController.text,
      'username': usernameController.text,
      'email': emailController.text,
      'password': passwordController.text,
    });
    getAll();
  }

  void deleteUsr(int id) async {
    await provider.deleteUser(<String, dynamic>{'id_user': id});
    getAll();
  }
}
