import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/buyers_page/add_buyer/controller/buyer_model.dart';
import 'package:inventory_management/ui/list_details/production_page/production_list/production_model.dart';

import '../../constants.dart';

class ProductionRepository {
  Future<List<BuyerModel>> newProduction({
    @required int qnty,
    @required int expectedOutput,
    @required String goodsName,
    @required String inputItems,
    @required String machineName,
  }) async {
    final token = await const AccountRepository().getToken();

    final start = await post(Uri.parse('$port/start_production/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'items_qty': qnty.toString(),
      'expected_good_output': expectedOutput.toString(),
      "goods_name": goodsName,
      "input_items": inputItems,
      "machine_name": machineName
    });

    final supplierList = (json.decode(start.body) as List)
        .map((dynamic e) => BuyerModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return supplierList;
  }

  Future<List<Production>> fetchOnGoingProductions() async {
    final token = await const AccountRepository().getToken();

    final production = await get(
      Uri.parse('$port/view_ongoing_production/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );
    print(production.body);
    final productions = (json.decode(production.body) as List)
        .map((dynamic e) => Production.fromJson(e as Map<String, dynamic>))
        .toList();
    return productions;
  }

  Future<List<Production>> fetchProductionsHistory() async {
    final token = await const AccountRepository().getToken();

    final suppliers = await get(
      Uri.parse('$port/view_production_history/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );

    final supplierList = (json.decode(suppliers.body) as List)
        .map((dynamic e) => Production.fromJson(e as Map<String, dynamic>))
        .toList();
    return supplierList;
  }
}
