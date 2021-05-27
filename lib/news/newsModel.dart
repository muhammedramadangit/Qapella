class NewsModel {
  int key;
  List<Data> data;

  NewsModel({this.key, this.data});

  NewsModel.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String title;
  String description;
  String publisherName;
  String image;
  String date;

  Data(
      {this.id,
      this.title,
      this.description,
      this.publisherName,
      this.image,
      this.date});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    publisherName = json['publisherName'];
    image = json['image'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['publisherName'] = this.publisherName;
    data['image'] = this.image;
    data['date'] = this.date;
    return data;
  }
}
