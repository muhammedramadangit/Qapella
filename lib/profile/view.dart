import 'package:flutter/material.dart';
import 'package:qabella/customDrawer/view.dart';
import 'package:qabella/widgets/appBar.dart';
import 'package:qabella/widgets/button.dart';
import 'package:qabella/widgets/colors.dart';

class ProfileEditingView extends StatefulWidget {
  @override
  _ProfileEditingViewState createState() => _ProfileEditingViewState();
}

class _ProfileEditingViewState extends State<ProfileEditingView> {
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
            customAppBar(context: context, title: 'الملف الشخصي'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 510,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
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
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 80,
                        width: 80,
                        margin: EdgeInsets.symmetric(vertical: 40),
                        decoration: BoxDecoration(
                          color: grey,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: yellow, width: 1),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/imgs/myprofile.jpeg',
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child:
                                    Image.asset('assets/imgs/editcircle.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'الأسم',
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: grey, width: 0.5),
                            boxShadow: [
                              BoxShadow(
                                color: grey.withOpacity(0.3),
                                blurRadius: 7,
                                offset: Offset(1, 4),
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'محمود مرعي',
                              style: TextStyle(
                                color: grey,
                                fontSize: 14,
                              ),
                            ),
                            Image.asset('assets/imgs/editgrey.png')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'رقم الجوال',
                      style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: grey, width: 0.5),
                            boxShadow: [
                              BoxShadow(
                                color: grey.withOpacity(0.3),
                                blurRadius: 7,
                                offset: Offset(1, 4),
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '9666415121312121',
                              style: TextStyle(
                                color: grey,
                                fontSize: 14,
                              ),
                            ),
                            Image.asset('assets/imgs/editgrey.png')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 6),
                    customButton(
                      context: context,
                      title: 'حفظ التعديلات',
                      onTap: () {},
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
