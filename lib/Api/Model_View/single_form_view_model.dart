import 'dart:developer';

import 'package:get/get.dart';
import 'package:uisapp/Api/Model/single_form_response_model.dart';
import 'package:uisapp/Api/Repo/single_form_repo.dart';
import 'package:uisapp/Api/api_response.dart';

class SingleFormViewModel extends GetxController {
  ApiResponse _apiResponseSIngleForm =
      ApiResponse.initial(message: 'Initialization');

  ApiResponse get apiresponseSingleForm => _apiResponseSIngleForm;

  Future<void> singleForm() async {
    _apiResponseSIngleForm = ApiResponse.loading(message: "Loading");
    update();
    try {
      SingleFormResponseModel response = await SingleFormRepo.singleRepo();
      log("singleresponse>>>>>>>>$response");
      _apiResponseSIngleForm = ApiResponse.complete(response);
    } catch (e) {
      _apiResponseSIngleForm = ApiResponse.error(message: 'Error');
      log('error>>>>>>>>$e');
    }
    update();
  }
}
