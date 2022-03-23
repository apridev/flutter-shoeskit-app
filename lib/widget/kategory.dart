import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class KategoryTile extends StatelessWidget {

  String name ;

  KategoryTile({ this.name });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        right: 8,
      ),
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: productColor,
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          name,
          style: primaryTextStyle.copyWith(fontSize: 10, fontWeight: semiBold),
        ),
      ),
    );
  }
}
