import 'dart:convert';

import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/waste/wastage_model.dart';

import '../../constants.dart';

class WastageRepository {
  Future<List<WastageModel>> fetchWastage() async {
    final token = await const AccountRepository().getToken();

    final warehouses = await get(
      Uri.parse('$port/view_wastage/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );

    final warehouse = (json.decode(warehouses.body) as List)
        .map((dynamic e) => WastageModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return warehouse;
  }
}
