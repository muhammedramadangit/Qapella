import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:qabella/customDrawer/view.dart';
import 'package:qabella/news/newsModel.dart';
import 'package:qabella/newsDetails/view.dart';
import 'package:qabella/widgets/appBar.dart';
import 'package:qabella/widgets/colors.dart';
import 'package:qabella/widgets/network.dart';

class NewsView extends StatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  NetWork util = NetWork();
  NewsModel _newsModel = NewsModel();
  bool _loading = true;
  String id;
  String title, description, publisherName, image, date;

  
  var _listOfNews = [
    {
      'newTitle': '1عنوان الخبر',
      'name': '1اسم الناشر',
      'newImage': 'newsimage.png',
    },
    {
      'newTitle': '2عنوان الخبر',
      'name': '2اسم الناشر',
      'newImage': 'newsimage.png',
    },
    {
      'newTitle': '3عنوان الخبر',
      'name': '3اسم الناشر',
      'newImage': 'newsimage.png',
    },
    {
      'newTitle': '4عنوان الخبر',
      'name': '4اسم الناشر',
      'newImage': 'newsimage.png',
    },
    {
      'newTitle': '5عنوان الخبر',
      'name': '5اسم الناشر',
      'newImage': 'newsimage.png',
    },
  ];
  
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
            customAppBar(context: context, title: 'الأخبار والأشعارات'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 510,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView.builder(
                  itemCount: _listOfNews.length,
                  itemBuilder: (context, index) {
                    return SingleNew(
                      newTitle: _listOfNews[index]['newTitle'],
                      name: _listOfNews[index]['name'],
                      newImage: _listOfNews[index]['newImage'],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleNew extends StatelessWidget {
  final newTitle;
  final name;
  final newImage;

  SingleNew({this.newTitle, this.name, this.newImage});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => NewsDetails(
                      newTitleDetails: newTitle,
                      nameDetails: name,
                      newsImageDetails: newImage,
                    )));
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: grey.withOpacity(0.2),
                blurRadius: 5,
                spreadRadius: 0.5,
              )
            ]),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              child: Image.asset(
                'assets/imgs/$newImage',
                height: MediaQuery.of(context).size.height,
                width: 90,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2 + 50,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newTitle,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: black,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/imgs/usergrey.png'),
                              SizedBox(width: 5),
                              Text(
                                name,
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/imgs/calendargrey.png'),
                              SizedBox(width: 5),
                              Text(
                                '7 ديسمبر 2020',
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'هذا النص هو مثال للنص يمكن ان يستبدل فى نفس المساحة',
                    style: TextStyle(
                      color: black,
                      fontSize: 10,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
