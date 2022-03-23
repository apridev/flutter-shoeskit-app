import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class ProductPopulerTile extends StatelessWidget {

  String name;
  String kategory;
  String price;
  String image;

  ProductPopulerTile({this.name, this.kategory, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 12),
      width: 147,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: productColor,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 12, left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/like_product.png',
                    width: 18,
                  ),
                ],
              ),
            ),
            Image.asset(
             image,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 12,
                left: 12,
                right: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kategory,
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    name,
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    price,
                    style: primaryTextStyle.copyWith(
                        fontSize: 12, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 12,
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
