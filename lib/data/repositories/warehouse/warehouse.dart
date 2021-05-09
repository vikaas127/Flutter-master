import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/warehouse_page/add_warehouse/controller/warehouse_model.dart';

import '../../constants.dart';

class WarehouseRepository {
  Future<List<WarehouseModel>> fetchWarehouse() async {
    final token = await const AccountRepository().getToken();

    final warehouses = await get(
      Uri.parse('$port/warehouse/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );

    final warehouse = (json.decode(warehouses.body) as List)
        .map((dynamic e) => WarehouseModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return warehouse;
  }

  Future<void> addWarehouse({
    @required String locationName,
  }) async {
    final token = await const AccountRepository().getToken();

    final response = await post(
      Uri.parse('$port/add_warehouse/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'location_name': locationName,
        'address': locationName,
      },
    );
    print(response.body);
  }

  Future<bool> removeWarehouse({
    @required int warehouseId,
  }) async {
    final token = await const AccountRepository().getToken();

    final response = await post(Uri.parse('$port/remove_warehouse/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'buyer_id': warehouseId.toString(),
    });
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  Future<void> updateWarehouse({
    @required String buyerId,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(
      Uri.parse('$port/update_buyer_description/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'buyer_name': buyerId,
      },
    );
    print(response.body);
  }
}
