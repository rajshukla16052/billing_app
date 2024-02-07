import 'package:billing_app/data/network/BaseApiServices.dart';
import 'package:billing_app/data/network/NetworkApiServices.dart';
import 'package:billing_app/res/components/app_urls.dart';

class AuthRepository {
      BaseApiServices _apiServices = NetworkApiServices();
      Future<dynamic> loginApi(dynamic data) async {
        try {
            dynamic response = await _apiServices.getPostApiResponse(AppUrls.loginEndPoint, data);
            return response;
        } catch(e) {
          throw e;
        }
      }

      Future<dynamic> registerApi(dynamic data) async {
        try {
            dynamic response = await _apiServices.getPostApiResponse(AppUrls.registerEndPoint, data);
            return response;
        } catch(e) {
          throw e;
        }
      }

}