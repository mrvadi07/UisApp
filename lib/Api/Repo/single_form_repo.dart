import 'dart:developer';

import 'package:uisapp/Api/Model/single_form_response_model.dart';
import 'package:uisapp/Api/api_handler.dart';
import 'package:uisapp/Api/api_routs.dart';

class SingleFormRepo extends BaseService {
  static Future singleRepo() async {
    var response = await ApiService().getResponse(
      apiType: APIType.aGet,
      url: '${BaseService.singleFormUrl}8/4',
    );
    log('singlerepo>>>>>>>>$response');
    SingleFormResponseModel singleFormResponseModel =
        SingleFormResponseModel.fromJson(response);

    log("--------------------------------$response");
    log("--------------------------------${BaseService.singleFormUrl}");
    return singleFormResponseModel;
  }
}
