import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class SizeTile extends StatelessWidget {

  String ukuran;

  SizeTile({this.ukuran});

  bool isColorHidden = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: inputColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              ukuran,
              style:
                  inputTextStyle.copyWith(fontSize: 15, fontWeight: semiBold),
            ),
          ),
        ],
      ),
    );
  }
}
