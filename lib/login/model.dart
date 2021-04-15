class LoginModel {
  int key;
  String msg;

  LoginModel({this.key, this.msg});

  LoginModel.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['msg'] = this.msg;
    return data;
  }
}
