import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/buyers_page/add_buyer/controller/buyer_model.dart';

import '../../constants.dart';

class BuyerRepository {
  Future<List<BuyerModel>> fetchBuyers() async {
    final token = await const AccountRepository().getToken();

    final suppliers = await get(
      Uri.parse('$port/buyer/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );
    print(suppliers.body);
    final supplierList = (json.decode(suppliers.body) as List).map((dynamic e) =>

      BuyerModel.fromJson(e as Map<String, dynamic>)).toList();
//print(supplierList[1]);

    return supplierList;

  }

  Future<void> addBuyers({
    @required String name,
    @required String number,
    @required String address,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(
      Uri.parse('$port/add_buyer/'),
      headers: {
        'Authorization': 'Token $token', 'Content-Type': 'application/x-www-form-urlencoded',
      },
      encoding: Encoding.getByName("utf-8"),
      body: {
        'buyer_name': name,
        'address': address,
        'phone_no': number,
      },
    );
    print(response.body);
  }

  Future<bool> removeBuyers({
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

  Future<void> updateBuyers({
    @required String buyerId,
    @required String description,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response =
        await put(Uri.parse('$port/update_buyer_description/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'buyer_id': buyerId,
      'description': description
    });
    print(response.body);
  }
}
