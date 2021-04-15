import 'package:dio/dio.dart';
import 'package:qabella/login/model.dart';
import 'package:qabella/widgets/network.dart';

class LoginController {
  NetWork _netWork = NetWork();
  LoginModel _loginModel = LoginModel();
  Future<LoginModel> userLogin(String fullName, String phoneNumber) async {
    FormData _formData = FormData.fromMap({
      'fullName': fullName,
      'phoneNumber': phoneNumber,
    });
    try {
      var response =
          await _netWork.postData(url: '/Login', formData: _formData);
      if (response != null) {
        _loginModel = LoginModel.fromJson(response);
      }
    } catch (e) {
      _loginModel = LoginModel(msg: 'error');
    }
    return _loginModel;
  }
}
