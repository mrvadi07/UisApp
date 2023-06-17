import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../Model/login_response_model.dart';

import '../Repo/login_repo.dart';

import '../api_response.dart';

class LoginViewModel extends GetxController {
  final box = GetStorage();

  ApiResponse _apiResponseLogin =
      ApiResponse.initial(message: 'Initialization');

  ApiResponse get apiResponseLogin => _apiResponseLogin;

  ///login
  final emailLogin = TextEditingController();
  final passwordLogin = TextEditingController();

  Future<void> loginViewModel(Map<String, dynamic> body) async {
    _apiResponseLogin = ApiResponse.loading(message: 'Loading');
    update();
    try {
      LoginResponseModel response = await LoginRepo.loginRepo(body: body);

    box.write('userId', response.data!.userId.toString());
      _apiResponseLogin = ApiResponse.complete(response);
      log('loginViewModel----response---->>>>>>$response');
    } catch (e) {
      _apiResponseLogin = ApiResponse.error(message: e.toString());
      log('loginViewModel-------->>>>>>$e');
    }
    update();
  }
}
