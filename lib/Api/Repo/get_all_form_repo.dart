import 'dart:developer';

import 'package:uisapp/Api/Model/get_all_form_response_model.dart';
import 'package:uisapp/Api/api_routs.dart';

import '../api_handler.dart';

class GetAllRepo extends BaseService {
  static Future getAllRepo() async {
    var response = await ApiService().getResponse(
      apiType: APIType.aGet,
      url: "${BaseService.getAllFormUrl}8",
    );

    log('get all repo>>>>>>>>>$response');
    GetAllFormsResponseModel getAllFormResponseModel =
        GetAllFormsResponseModel.fromJson(response);

    log('--------------------------------$response');
    log('--------------------------------${BaseService.getAllFormUrl}');
    return getAllFormResponseModel;
  }
}
