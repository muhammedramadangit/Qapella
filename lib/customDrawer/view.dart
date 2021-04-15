import 'package:flutter/material.dart';
import 'package:qabella/aboutUs/view.dart';
import 'package:qabella/home/view.dart';
import 'package:qabella/login/view.dart';
import 'package:qabella/profile/view.dart';
import 'package:qabella/terms/view.dart';
import 'package:qabella/widgets/colors.dart';
import 'package:qabella/widgets/drawerItem.dart';

class CustomDrawerView extends StatefulWidget {
  @override
  _CustomDrawerViewState createState() => _CustomDrawerViewState();
}

class _CustomDrawerViewState extends State<CustomDrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 25,
                  width: 25,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.symmetric(vertical: 60, horizontal: 25),
                  child: Image.asset('assets/imgs/backblack.png'),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(top: 40, bottom: 15),
                      decoration: BoxDecoration(
                        color: grey,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: black, width: 0.5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/imgs/myprofile.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'محمود',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: grey.withOpacity(0.5),
                          blurRadius: 8,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      customItem(
                        title: 'الرئيسية',
                        imgTitle: 'assets/imgs/home.png',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomeView()));
                        },
                      ),
                      customItem(
                        title: 'الملف الشخصي',
                        imgTitle: 'assets/imgs/profile.png',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ProfileEditingView()));
                        },
                      ),
                      customItem(
                        title: 'عن التطبيق',
                        imgTitle: 'assets/imgs/about.png',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => AboutUsView()));
                        },
                      ),
                      customItem(
                        title: 'الشروط والأحكام',
                        imgTitle: 'assets/imgs/rules.png',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => TermsView()));
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // ================= log out button =================
              Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginView()));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: yellow,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(50)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.logout,
                          size: 18,
                        ),
                        Text(
                          'تسجيل خروج',
                          style: TextStyle(
                            color: black,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
