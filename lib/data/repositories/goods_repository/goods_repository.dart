import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/goods_page/add_goods/controller/goods_model.dart';

import '../../constants.dart';

class GoodsRepository {
  Future<List<GoodsModel>> fetchGoods({@required String locName}) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await http.post(
      Uri.parse('$port/goods_view/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {'loc_name': locName},
    );
    print(response.body);
    final goodsList = (json.decode(response.body) as List)
        .map((dynamic e) => GoodsModel.fromJson(e as Map<String, dynamic>))
        .toList();
    print(response.body);
    return goodsList;
  }

  Future<void> addGoods({
    @required String goodsName,
    @required int quantity,
    @required String locationName,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await http.post(
      Uri.parse('$port/add_goods/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'goods_name': goodsName,
        'quantity': quantity.toString(),
        'loc_name': locationName
      },
    );
    print(response.body);
  }

  Future<bool> removeRawMaterial({
    @required int buyerId,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response =
        await http.post(Uri.parse('$port/remove_buyer/'), headers: {
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
        await http.post(Uri.parse('$port/update_buyer_description/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'buyer_name': buyerId,
    });
    print(response.body);
  }
}
