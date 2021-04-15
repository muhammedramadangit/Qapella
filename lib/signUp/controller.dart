import 'package:dio/dio.dart';
import 'package:qabella/signUp/model.dart';
import 'package:qabella/widgets/network.dart';

class SignUpController {
  NetWork _netWork = NetWork();
  SignUpModel _signUpModel = SignUpModel();
  Future<SignUpModel> userSignUp(String fullName, String phoneNumber) async {
    FormData _formdata = FormData.fromMap({
      'fullName': fullName,
      'phoneNumber': phoneNumber,
    });
    try {
      var response =
          await _netWork.postData(url: '/Register', formData: _formdata);
      if (response != null) {
        _signUpModel = SignUpModel.fromJson(response);
      }
    } catch (e) {
      _signUpModel = SignUpModel(msg: 'error');
    }
    return _signUpModel;
  }
}
