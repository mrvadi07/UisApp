import 'dart:developer';

import 'package:uisapp/Api/Model/signup_response_model.dart';
import 'package:uisapp/Api/api_handler.dart';
import 'package:uisapp/Api/api_routs.dart';

class SignUPRepo extends BaseService {
  static Future signUpRepo({required Map<String, dynamic> body}) async {
    var response = await ApiService().getResponse(
      apiType: APIType.aPost,
      url: BaseService.registerUrl,
      body: body,
    );

    print("Sign up response $response");

    SignUpResponseModel signUpResponseModel =
        SignUpResponseModel.fromJson(response);
    log("----------$response");
    log("----------${BaseService.registerUrl}");

    return signUpResponseModel;
  }
}
