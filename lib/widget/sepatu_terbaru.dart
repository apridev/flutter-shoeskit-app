import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class SepatuTerbaru extends StatelessWidget {

  String name;
  String kategory;
  String price;
  String image;

  SepatuTerbaru({this.name, this.kategory, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: defaultMargin,
        right: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: productColor),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 68,
            height: 51,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  kategory,
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: medium),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  name,
                  style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  price,
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: semiBold),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/icons/right_buttom_icon.png',
            width: 20,
          ),
        ],
      ),
    );
  }
}
