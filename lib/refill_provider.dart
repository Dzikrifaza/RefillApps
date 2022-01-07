import 'dart:async';
import 'package:get/get.dart';

class RefillProvider extends GetConnect {
  String url = 'http://192.168.100.207:8080/us';
  String urlLogin = 'http://192.168.100.207:8080/login';
  String urlOrder = 'http://192.168.100.207:8080/order';

  Future<Response> getAll() => get(url);
  Future<Response> create(Map data) => post(url, data);
  Future<Response> update(Map data) => put(url, data);
  Future deleteUser(Map data) => post(url + '/delete', data);

  Future<Response> getAllOrder() => get(urlOrder);
  Future<Response> createOrder(Map data) => post(urlOrder, data);
  Future<Response> updateOrder(Map data) => put(urlOrder, data);
  Future deleteOrder(Map data) => post(urlOrder + '/delete', data);

  Future<Response> login(Map data) => post(urlLogin, data);
}
