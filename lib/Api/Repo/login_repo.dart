import 'dart:developer';
import '../Model/login_response_model.dart';
import '../api_handler.dart';
import '../api_routs.dart';

class LoginRepo extends BaseService {
  static Future loginRepo({required Map<String, dynamic> body}) async {
    var response = await ApiService().getResponse(
        apiType: APIType.aPost, url: BaseService.loginUrl, body: body);
    log('---------------------RESPONSE   $response');
    LoginResponseModel loginResponseModel =
        LoginResponseModel.fromJson(response);

    log('-----------------------$response');
    log('-----------------------${BaseService.loginUrl}');
    return loginResponseModel;
  }
}
