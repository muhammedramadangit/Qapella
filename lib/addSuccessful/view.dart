import 'package:flutter/material.dart';
import 'package:qabella/home/view.dart';
import 'package:qabella/widgets/colors.dart';

class AddedSuccesses extends StatefulWidget {
  @override
  _AddedSuccessesState createState() => _AddedSuccessesState();
}

class _AddedSuccessesState extends State<AddedSuccesses> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: yellow,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/imgs/sucessvector.png'),
                SizedBox(height: 20),
                Text(
                  'تمت الأضافة بنجاح',
                  style: TextStyle(
                    color: black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeView()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: black, width: 1),
                ),
                child: Center(
                  child: Text(
                    'العودة للرئيسية',
                    style: TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
