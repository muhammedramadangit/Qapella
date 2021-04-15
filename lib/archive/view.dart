import 'package:flutter/material.dart';
import 'package:qabella/archiveDetails/view.dart';
import 'package:qabella/customDrawer/view.dart';
import 'package:qabella/widgets/appBar.dart';
import 'package:qabella/widgets/colors.dart';

class ArchiveView extends StatefulWidget {
  @override
  _ArchiveViewState createState() => _ArchiveViewState();
}

class _ArchiveViewState extends State<ArchiveView> {
  var _listOfArchive = [
    {
      'archiveTitle': 'حفل زفاف بندر سليمان 1',
      'archiveImage': 'eventimage.png',
    },
    {
      'archiveTitle': 'حفل زفاف بندر سليمان 2',
      'archiveImage': 'eventimage.png',
    },
    {
      'archiveTitle': 'حفل زفاف بندر سليمان 3',
      'archiveImage': 'eventimage.png',
    },
    {
      'archiveTitle': 'حفل زفاف بندر سليمان 4',
      'archiveImage': 'eventimage.png',
    },
    {
      'archiveTitle': 'حفل زفاف بندر سليمان 5',
      'archiveImage': 'eventimage.png',
    },
    {
      'archiveTitle': 'حفل زفاف بندر سليمان 6',
      'archiveImage': 'eventimage.png',
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
            customAppBar(context: context, title: 'أرشيف الصور'),
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
                  itemCount: _listOfArchive.length,
                  itemBuilder: (context, index) {
                    return SingleArchive(
                      archiveImage: _listOfArchive[index]['archiveImage'],
                      archiveTitle: _listOfArchive[index]['archiveTitle'],
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

class SingleArchive extends StatelessWidget {
  final archiveTitle;
  final archiveImage;

  SingleArchive({this.archiveTitle, this.archiveImage});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ArchiveDetails(
                      archiveImageDetails: archiveImage,
                      archiveTitleDetails: archiveTitle,
                    )));
      },
      child: Container(
        height: 70,
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
                'assets/imgs/eventimage.png',
                height: MediaQuery.of(context).size.height,
                width: 90,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2 + 50,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    archiveTitle,
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: black,
                      fontSize: 16,
                    ),
                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
