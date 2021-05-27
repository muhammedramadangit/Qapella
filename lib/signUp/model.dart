class UserModel {
  int key;
  Data data;
  String token;
  String expiration;
  String msg;
  bool status;

  UserModel(
      {this.key,
      this.data,
      this.token,
      this.expiration,
      this.msg,
      this.status});

  UserModel.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
    expiration = json['expiration'];
    msg = json['msg'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['token'] = this.token;
    data['expiration'] = this.expiration;
    data['msg'] = this.msg;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String id;
  String fullName;
  String phoneNumber;
  String phoneCode;
  String countryCode;
  String image;
  String lang;

  Data(
      {this.id,
      this.fullName,
      this.phoneNumber,
      this.phoneCode,
      this.countryCode,
      this.image,
      this.lang});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    phoneNumber = json['phoneNumber'];
    phoneCode = json['phoneCode'];
    countryCode = json['countryCode'];
    image = json['image'];
    lang = json['lang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['phoneNumber'] = this.phoneNumber;
    data['phoneCode'] = this.phoneCode;
    data['countryCode'] = this.countryCode;
    data['image'] = this.image;
    data['lang'] = this.lang;
    return data;
  }
}
