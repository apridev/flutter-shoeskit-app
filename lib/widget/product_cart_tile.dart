import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class ProductCartTile extends StatelessWidget {

  String images;
  String number;
  String name;
  String category;
  String price;

  ProductCartTile({this.images, this.number, this.name, this.category, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17, horizontal: 16),
      margin: EdgeInsets.only(top: 12),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: productColor),
      child: Row(
        children: [
          Image.asset(
            images,
            width: 70,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  name,
                  overflow: TextOverflow.ellipsis,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/icons/min_active_icon.png',
                width: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                number,
                style: primaryTextStyle.copyWith(
                    fontSize: 12, fontWeight: reguler),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/icons/plus_active_icon.png',
                width: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
