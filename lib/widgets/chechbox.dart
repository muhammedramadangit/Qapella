import 'package:flutter/material.dart';
import 'colors.dart';

class CustomCheckBox extends StatefulWidget {
  final bool isChecked;
  final Color selectedColor;

  CustomCheckBox({this.isChecked, this.selectedColor});

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        width: 16,
        height: 15,
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: _isSelected ? yellow : white,
          borderRadius: BorderRadius.circular(5),
          border: _isSelected
              ? null
              : Border.all(
                  color: yellow,
                  width: 1,
                ),
        ),
        child: _isSelected
            ? Icon(
                Icons.check,
                color: white,
                size: 14,
              )
            : null,
      ),
    );
  }
}
