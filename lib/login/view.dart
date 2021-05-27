import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:qabella/home/view.dart';
import 'package:qabella/login/controller.dart';
import 'package:qabella/login/model.dart';
import 'package:qabella/signUp/view.dart';
import 'package:qabella/widgets/button.dart';
import 'package:qabella/widgets/chechbox.dart';
import 'package:qabella/widgets/colors.dart';
import 'package:qabella/widgets/network.dart';
import 'package:qabella/widgets/textfield.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginModel _loginModel = LoginModel();
  LoginController _loginController = LoginController();
  bool _loading = false;
  String fullName, phoneNumber;

  void _submitForm() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _loading = true;
    });

    NetWork util = NetWork();

    FormData body = FormData.fromMap({
      "fullName" : fullName,
      "phoneNumber" : phoneNumber,
      "lang" : "ar",
      "deviceId" : "arcztft7gyhuj8ihge3d4rftg6yh7u",
    });

    _loginModel = await util.postData(formData: body, url: "Login").catchError((onError)=>print(onError));

    print(_loginModel.msg);

    if (_loginModel.data != null && _loginModel.status == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeView()));
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text(_loginModel.msg)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: [
            Image.asset(
              'assets/imgs/headeeer.png',
              width: double.infinity,
              height: 210,
              fit: BoxFit.cover,
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Image.asset(
                'assets/imgs/logo.png',
                width: 100,
                height: 100,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 440,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      Text(
                        'تسجيل دخول',
                        style: TextStyle(
                          color: black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40),
                      textField(
                        hintText: 'اسم المستخدم',
                        obSecure: false,
                        type: TextInputType.name,
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'اسم المستخدم مطلوب';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            value = fullName;
                          });
                        },
                      ),
                      SizedBox(height: 20),
                      textField(
                        hintText: 'رقم الجوال',
                        obSecure: false,
                        type: TextInputType.number,
                        suffix: Container(
                          width: 56,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '+966',
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: grey,
                                ),
                              ),
                              Image.asset('assets/imgs/saudiarabiaflag.png'),
                            ],
                          ),
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'رقم الجوال مطلوب';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            value = '+966 $phoneNumber';
                          });
                        },
                      ),
                      Row(
                        children: [
                          CustomCheckBox(),
                          SizedBox(width: 10),
                          Text(
                            'تذكرني',
                            style: TextStyle(color: black, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Builder(
                        builder: (_) => customButton(
                          context: context,
                          title: 'تسجيل الدخول',
                          onTap: () {
                            _submitForm();
                          },
                        ),
                      ),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ليس لديك حساب ؟ ',
                            style: TextStyle(
                              fontSize: 14,
                              color: black,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SignUpView()));
                            },
                            child: Text(
                              'اضغط هنا',
                              style: TextStyle(
                                fontSize: 14,
                                color: black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
