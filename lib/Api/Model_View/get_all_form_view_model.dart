import 'dart:developer';

import 'package:get/get.dart';
import 'package:uisapp/Api/Model/get_all_form_response_model.dart';
import 'package:uisapp/Api/Repo/get_all_form_repo.dart';
import 'package:uisapp/Api/api_response.dart';

class GetAllFormModel extends GetxController {
  ApiResponse _apiResponsGetAllForm =
      ApiResponse.initial(message: 'Initialization');

  ApiResponse get ApiResponseGetAllForm => _apiResponsGetAllForm;

  Future<void> getAllFormModel() async {
    _apiResponsGetAllForm = ApiResponse.loading(message: "Loading");
    update();
    try {
      GetAllFormsResponseModel response = await GetAllRepo.getAllRepo();
      log("GetAllFormResponseModel>>>>>response>>>>>$response");
      _apiResponsGetAllForm = ApiResponse.complete(response);
    } catch (e) {
      _apiResponsGetAllForm = ApiResponse.error(message: e.toString());
      log("GetAllFormResponseModel>>>>>>>>>>$e");
    }
    update();
  }
}
