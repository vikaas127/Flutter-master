import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/data/repositories/account_repository.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/controller/supplier_model.dart';

import '../../constants.dart';

class SupplierRepository {
  Future<List<SupplierModel>> fetchSuppliers() async {
    final token = await const AccountRepository().getToken();

    final suppliers = await get(
      Uri.parse('$port/supplier/'),
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Token $token',
      },
    );
    print(suppliers.body);
    final supplierList = (json.decode(suppliers.body) as List)
        .map((dynamic e) => SupplierModel.fromJson(e as Map<String, dynamic>))
        .toList();
    print(supplierList[0]);
    return supplierList;
  }

  Future<void> addSuppliers({
    @required String name,
    @required String number,
    @required String address,
    @required String description,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(Uri.parse('$port/add_supplier/'), headers: {
      'Authorization': 'Token $token',
    }, body: {
      'supplier_name': name,
      'address': address,
      'phone_no': number,
      'description': "{$description}",
    });
    print(response.body);
  }

  Future<bool> removeSuppliers({@required int supplierId,}) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await post(Uri.parse('$port/remove_supplier/'),
        headers: {
      'Authorization': 'Token $token',
    }, body: {
      'supplier_id': supplierId,
    });
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  Future<void> updateSuppliers({
    @required String supplierId,
    @required String description,
  }) async {
    final token = await const AccountRepository().getToken();
    print(token);

    final response = await put(
      Uri.parse('$port/update_supplier_description/'),
      headers: {
        'Authorization': 'Token $token',
      },
      body: {'supplier_id': supplierId, 'description': description},
    );
    print(response.body);
  }
}
