import 'package:flutter/material.dart';
import 'package:qabella/widgets/colors.dart';


class ArchiveDetails extends StatefulWidget {
  final archiveImageDetails;
  final archiveTitleDetails;
  ArchiveDetails({
    this.archiveImageDetails,
    this.archiveTitleDetails,
  });

  @override
  _ArchiveDetailsState createState() => _ArchiveDetailsState();
}

class _ArchiveDetailsState extends State<ArchiveDetails> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/imgs/${widget.archiveImageDetails}',
                    width: double.infinity,
                    height: 280,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 90,
                      width: double.infinity,
                      color: black.withOpacity(0.5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.archiveTitleDetails,
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: white,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Image.asset('assets/imgs/calendarwhite.png'),
                              SizedBox(width: 5),
                              Text(
                                '7 ديسمبر 2020',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 25,
                width: 25,
                alignment: Alignment.topRight,
                margin: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                child: Image.asset('assets/imgs/backcircle.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 390,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Text(
                  'هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة هذا النص هو مثال لنص يمكن ان يستبدل في نفس المساحة',
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
