import 'package:flutter/material.dart';
import 'package:qabella/customDrawer/view.dart';
import 'package:qabella/widgets/appBar.dart';
import 'package:qabella/widgets/colors.dart';
import 'package:qabella/widgets/contactIcons.dart';

class ContactUsView extends StatefulWidget {
  @override
  _ContactUsViewState createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
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
            customAppBar(context: context, title: 'للتواصل'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 510,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/imgs/logo.png',
                        width: 90,
                        height: 90,
                      ),
                    ),
                    contactIcon(
                      context: context,
                      title: 'example.info',
                      socialIcon: 'assets/imgs/twitter.png',
                    ),
                    contactIcon(
                      context: context,
                      title: '+966 5555565211565',
                      socialIcon: 'assets/imgs/whatsapp.png',
                    ),
                    contactIcon(
                      context: context,
                      title: '+966 5555565211565',
                      socialIcon: 'assets/imgs/telegram.png',
                    ),
                    contactIcon(
                      context: context,
                      title: 'example.info',
                      socialIcon: 'assets/imgs/instgram.png',
                    ),
                    contactIcon(
                      context: context,
                      title: 'example.info',
                      socialIcon: 'assets/imgs/facebook.png',
                    ),
                    contactIcon(
                      context: context,
                      title: 'example.info',
                      socialIcon: 'assets/imgs/snapchat.png',
                    ),
                    contactIcon(
                      context: context,
                      title: 'example.info@gmail.com',
                      socialIcon: 'assets/imgs/gmail.png',
                    ),
                    contactIcon(
                      context: context,
                      title: 'example.info',
                      socialIcon: 'assets/imgs/youtube.png',
                    ),
                    contactIcon(
                      context: context,
                      title: '+966 5555565211565',
                      socialIcon: 'assets/imgs/phone.png',
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
