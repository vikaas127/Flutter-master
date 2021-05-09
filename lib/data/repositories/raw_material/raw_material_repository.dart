import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/items_page/add_raw_material/controller/items_model.dart';

import '../../constants.dart';

class ItemsRepository {
  Future<List<ItemsModel>> fetchItems() async {
    final token = await const AccountRepository().getToken();

    final rawMaterials = await get(
      Uri.parse('$port/view_items/'),
      headers: {
        'Authorization': 'Token $token',
      },
    );
    print(rawMaterials.body);
    final rawMaterial = (json.decode(rawMaterials.body) as List)
        .map((dynamic e) => ItemsModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return rawMaterial;
  }

  Future<void> addItems({
    @required String material,
    @required int quanity,
    @required String tag,
    @required String location,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(Uri.parse('$port/add_items/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'item_name': material,
      'quantity': quanity.toString(),
      'tag': tag,
      'warehouse_name': location
    });
    print(response.body);
  }
}
