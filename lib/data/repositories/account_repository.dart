import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:inventory_management/ui/login_page/login_failed_controller/login_failed_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum LoginStatus { successfull, failed, none }

class LoginResult {
  final LoginStatus status;
  final LoginResponseModel model;

  LoginResult({this.model, @required this.status});
}

class AccountRepository {
  /// Try to fetch current logged in user, throws NoSuchUserException if user not exists.
  const AccountRepository();

  Future<String> getToken() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString('token');
  }

  Future<void> setToken({String token}) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setString('token', token);
  }

  Future<LoginResult> registerUser(
      {@required String userName,
      @required String email,
      @required int contactNumber,
      @required String password,
      @required String confirmPassword,
      @required String recoveryQuestion,
      @required String recoveryAnswer,
      @required String userType}) async {
    final user = int.parse(userType);

    final response =
        await post(Uri.parse("http://bitecope.co.in:8080/register/"), body: {
      'username': userName,
      'phone_no': contactNumber.toString(),
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
      'recovery_question': recoveryQuestion,
      'recovery_answer': recoveryAnswer,
      'user_type': userType
    });
    final jsonValue = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    final token = jsonValue["token"] as String;

    if (token == null) {
      final map = json.decode(response.body) as Map<String, dynamic>;

      return LoginResult(
          status: LoginStatus.failed, model: LoginResponseModel.fromJson(map));
    }
    if (response.statusCode == 200) {
      if (token != null) {
        await setToken(token: token);

        Response regResponse;
        switch (user) {
          case 0:
            regResponse = await post(
                Uri.parse("http://bitecope.co.in:8080/owner_ins_details/"),
               headers: {
                  'Authorization': 'Token $token',
                },

                body: {
                  'owner_name': userName,
                  'phone_no': contactNumber.toString(),
                  'email': email,
                  'address': 'lll',
                  'description': 'hjjkjk'
                });
            break;
          case 1:
            regResponse = await post(
              Uri.parse("http://bitecope.co.in:8080/worker_insert/"),
              headers: {
                'Authorization': 'Token $token',
              },
              body: {
                'worker_name': userName,
                'address': 'kk',
              },
            );
            break;
        }
        print(regResponse.body);
        if (regResponse.statusCode == 200) {
          final json = jsonDecode(
            utf8.decode(regResponse.bodyBytes),
          ) as Map;
          print(json);

          return LoginResult(status: LoginStatus.successfull);
        }
      }
    }
    return LoginResult(status: LoginStatus.failed);
  }

  Future<LoginResult> signIn({
    @required String username,
    @required String password,
  }) async {
    print(username);
    print(password);
    final response =
        await post(Uri.parse("http://bitecope.co.in:8080/login/"), body: {
      'username': username,
      'password': password,
    });
    print(response.body);
    final json = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    if (response.statusCode == 200) {
      final token = json["token"] as String;

      await setToken(token: token);
      return LoginResult(status: LoginStatus.successfull);
    } else {
      final error = json["error"] as String;
      print(error);
      return LoginResult(status: LoginStatus.failed);
    }
  }
}
