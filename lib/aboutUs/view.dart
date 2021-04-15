import 'package:flutter/material.dart';
import 'package:qabella/customDrawer/view.dart';
import 'package:qabella/widgets/appBar.dart';
import 'package:qabella/widgets/colors.dart';


class AboutUsView extends StatefulWidget {
  @override
  _AboutUsViewState createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
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
            customAppBar(context: context, title: 'عن التطبيق'),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Image.asset(
                        'assets/imgs/logo.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                    Container(
                      height: 310,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.7,
                        ),
                      ),
                    )
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
