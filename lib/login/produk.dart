import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:refill_apps/order/create_order.dart';
import 'package:refill_apps/order/order_controller.dart';
import 'package:refill_apps/order/update_order.dart';

class Produk extends StatefulWidget {
  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  final controller = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refill Apps - Order'),
      ),
      body: Obx(
        () => ListView.separated(
          itemCount: controller.orderList.length,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.orderList[index].namaUser),
              subtitle: Text(controller.orderList[index].namaBarang),
              // isThreeLine: true,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Get.to(
                        UpdateOrder(controller.orderList[index]),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      controller
                          .deleteOrder(controller.orderList[index].idOrder);
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
          Get.to(CreateOrder());
        },
      ),
    );
  }
}
