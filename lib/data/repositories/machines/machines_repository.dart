import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/machines_page/add_machine/controller/machine_model.dart';

import '../../constants.dart';

class MachineRepository {
  Future<List<MachineModel>> fetchMachines() async {
    final token = await const AccountRepository().getToken();

    final goods = await get(
      Uri.parse('http://bitecope.co.in:8080/machines_view/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );
    print(goods.body);
    final warehouse = (json.decode(goods.body) as List)
        .map((dynamic e) => MachineModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return warehouse;
  }

  Future<void> addMachines({
    @required String machineName,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(
      Uri.parse('$port/add_machines/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'machine_name': machineName,
      },
    );
    print(response.body);
  }

  Future<bool> removeWarehouse({
    @required int buyerId,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(Uri.parse('$port/remove_buyer/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'buyer_id': buyerId.toString(),
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

    final response =
        await post(Uri.parse('$port/update_buyer_description/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'buyer_name': buyerId,
    });
    print(response.body);
  }
}
