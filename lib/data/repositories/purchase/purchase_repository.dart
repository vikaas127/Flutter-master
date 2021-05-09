import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/purchase/purchase_history/purchase_list_model/purchase_list_model.dart';

import '../../constants.dart';

class PurchaseRepository {
  Future<List<PurchaseListModel>> fetchItems() async {
    final token = await const AccountRepository().getToken();

    final rawMaterials = await get(
      Uri.parse('$port/purchase_history/'),
      headers: {
        'Authorization': 'Token $token',
      },
    );
    print(rawMaterials.body);
    final rawMaterial = (json.decode(rawMaterials.body) as List)
        .map((dynamic e) =>
            PurchaseListModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return rawMaterial;
  }

  Future<void> purchase({
    @required String itemName,
    @required int quantity,
    @required String tag,
    @required String location,
    @required String supplierName,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(Uri.parse('$port/buy_items/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'item_name': itemName,
      'quantity': quantity.toString(),
      'tag': tag,
      'loc': location,
      'supplier_name': supplierName
    });
    print(response.body);
  }
}
