import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refill_apps/create_page.dart';
import 'package:refill_apps/update_user.dart';
import 'refill_controller.dart';
import 'create_page.dart';
// ignore_for_file: file_names

class RefillPage extends StatelessWidget {
  final controller = Get.put(RefillController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refill Apps'),
      ),
      body: Obx(
        () => ListView.separated(
          itemCount: controller.refillList.length,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.refillList[index].namaUser),
              subtitle: Text(controller.refillList[index].password),
              // isThreeLine: true,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Get.to(
                        UpdatePage(controller.refillList[index]),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      controller.deleteUsr(controller.refillList[index].idUser);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.to(CreatePage());
        },
      ),
    );
  }
}
