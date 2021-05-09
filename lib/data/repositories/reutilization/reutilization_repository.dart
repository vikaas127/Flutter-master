import 'dart:convert';

import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/reutilization/reutilization_model.dart';

import '../../constants.dart';

class ReutilizationRepository {
  Future<List<ReutilizationModel>> fetchHistory() async {
    final token = await const AccountRepository().getToken();

    final reUtilization = await get(
      Uri.parse('$port/reutilization_history/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );
    print(reUtilization.body);
    final supplierList = (json.decode(reUtilization.body) as List)
        .map((dynamic e) =>
            ReutilizationModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return supplierList;
  }
}
