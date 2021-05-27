import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:qabella/addNew/addNewModel.dart';
import 'package:qabella/addSuccessful/view.dart';
import 'package:qabella/customDrawer/view.dart';
import 'package:qabella/widgets/addNewTextFeild.dart';
import 'package:qabella/widgets/appBar.dart';
import 'package:qabella/widgets/button.dart';
import 'package:qabella/widgets/colors.dart';
import 'package:qabella/widgets/network.dart';

class AddNew extends StatefulWidget {
  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AddNewModel _addNewModel = AddNewModel();
  bool _isLoading = false;
  String firstName, fatherName, grandFatherName, lastName, surName, phone;

  void _submitForm() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });

    NetWork utile = NetWork();

    FormData body = FormData.fromMap({
      "firstName": firstName,
      "fatherName": fatherName,
      "grandFatherName": grandFatherName,
      "lastName": lastName,
      "surName": surName,
      "phone": phone,
      "lang": "ar",
    });

    _addNewModel = await utile.postData(formData: body, url: "AddFriend");
    if (_addNewModel.key != 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => AddedSuccesses()));
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text(_addNewModel.msg)),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        drawer: CustomDrawerView(),
        body: Stack(
          children: [
            Image.asset(
              'assets/imgs/headeeer12.png',
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            customAppBar(
                context: context, title: 'إضافة أو تحديث الأسماء والأرقام'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 510,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(25, 10, 25, 20),
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
                      addNewTextField(
                        title: 'الأسم الأول',
                        hintText: 'محمود',
                        obSecure: false,
                        type: TextInputType.name,
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'الاسم الأول مطلوب';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            value = firstName;
                          });
                        }
                      ),
                      addNewTextField(
                        title: 'اسم الأب',
                        hintText: 'ادخل اسم الأب',
                        obSecure: false,
                        type: TextInputType.name,
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'اسم الأب مطلوب';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            value = fatherName;
                          });
                        }
                      ),
                      addNewTextField(
                        title: 'اسم الجد',
                        hintText: 'ادخل اسم الجد',
                        obSecure: false,
                        type: TextInputType.name,
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'اسم الجد مطلوب';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            value = grandFatherName;
                          });
                        }
                      ),
                      addNewTextField(
                        title: 'جد الأب',
                        hintText: 'ادخل اسم جد الأب',
                        obSecure: false,
                        type: TextInputType.name,
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'اسم جد الأب مطلوب';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            value = lastName;
                          });
                        }
                      ),
                      addNewTextField(
                        title: 'اللقب',
                        hintText: 'ادخل اللقب',
                        obSecure: false,
                        type: TextInputType.name,
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'اللقب مطلوب';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            value = surName;
                          });
                        }
                      ),
                      addNewTextField(
                        title: 'رقم الجوال',
                        hintText: 'ادخل رقم الجوال',
                        obSecure: false,
                        type: TextInputType.number,
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'رقم الجوال مطلوب';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            value = phone;
                          });
                        }
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 12),
                      customButton(
                        context: context,
                        title: 'إرسال',
                        onTap: () {
                          _submitForm();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
