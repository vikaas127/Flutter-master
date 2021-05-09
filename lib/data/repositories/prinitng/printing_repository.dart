import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/printing/printing_list/printing_model.dart';

import '../../constants.dart';

class PrintingRepository {
  Future<List<Printing>> printingHistory() async {
    final token = await const AccountRepository().getToken();

    final suppliers = await get(
      Uri.parse('$port/view_printing_history/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );

    final supplierList = (json.decode(suppliers.body) as List)
        .map((dynamic e) => Printing.fromJson(e as Map<String, dynamic>))
        .toList();
    return supplierList;
  }

  Future<void> stopPrinting({
    @required int printingId,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(
      Uri.parse('$port/stop_printing/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'printing_id': printingId,
      },
    );
    print(response.body);
  }

  Future<bool> onGoingPrinting() async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await get(
      Uri.parse('$port/view_ongoing_printing/'),
      headers: {
        'Authorization': 'Token $token',
      },
    );
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  Future<void> startPrinting({
    @required int itemQty,
    @required int expectedOutput,
    @required String itemName,
    @required String machineName,
    @required String description,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(
      Uri.parse('$port/start_printing/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {
        'items_qty': itemQty.toString(),
        'machine_name': machineName,
        'description': description,
        'item_name': itemName,
        'expected_good_output': expectedOutput.toString()
      },
    );
    print(response.body);
  }
}
