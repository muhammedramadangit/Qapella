import 'package:flutter/material.dart';
import 'package:qabella/addNew/view.dart';
import 'package:qabella/archive/view.dart';
import 'package:qabella/contactUs/view.dart';
import 'package:qabella/customDrawer/view.dart';
import 'package:qabella/news/view.dart';
import 'package:qabella/widgets/colors.dart';
import 'package:qabella/widgets/customContainer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        key: _scaffoldKey,
        drawer: CustomDrawerView(),
        body: Stack(
          children: [
            Image.asset(
              'assets/imgs/headeeer.png',
              width: double.infinity,
              height: 160,
              fit: BoxFit.cover,
            ),
            InkWell(
              onTap: () {
                _scaffoldKey.currentState.openDrawer();
              },
              child: Container(
                height: 40,
                width: 20,
                alignment: Alignment.topRight,
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
                child: Image.asset('assets/imgs/menu.png',
                    height: 25, fit: BoxFit.fill),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(vertical: 25),
              child: Image.asset(
                'assets/imgs/logo.png',
                width: 100,
                height: 100,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 480,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 10),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'مرحبَا, محمود',
                      style: TextStyle(
                        color: grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'هذا النص هو مثال لنص يمكن ان يستبدل فى نفس المساحة',
                      style: TextStyle(
                        color: grey,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    customContainer(
                      context: context,
                      title: 'الأخبار والأشعارات',
                      mainIcon: 'assets/imgs/newlarge.png',
                      icon: 'assets/imgs/newssmall.png',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => NewsView()));
                      },
                    ),
                    customContainer(
                      context: context,
                      title: 'إضافة أو تحديث الأسماء والأرقام',
                      mainIcon: 'assets/imgs/addnamelarge.png',
                      icon: 'assets/imgs/addnamesmall.png',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => AddNew()));
                      },
                    ),
                    customContainer(
                      context: context,
                      title: 'أرشيف الصور',
                      mainIcon: 'assets/imgs/imagelarge.png',
                      icon: 'assets/imgs/imagesmall.png',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ArchiveView()));
                      },
                    ),
                    customContainer(
                      context: context,
                      title: 'للتواصل',
                      mainIcon: 'assets/imgs/contactlarge.png',
                      icon: 'assets/imgs/contactsmall.png',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ContactUsView()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
