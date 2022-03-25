import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';
import 'package:shoeskit/widget/product_populer.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    Widget header() {
      return Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/Rectangle_img.png')),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Yuk Cari Sepatu \nyang kamu inginkan!',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 180, left: 60, right: 60),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: onboardingColor),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onTap: () {},
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                        hintStyle: TextStyle(fontSize: 14, color: inputColor),
                        border: InputBorder.none,
                        hintText: 'Search...'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/icons/search_icon.png',
                    width: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget contentEmpty() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            Center(
              child: Image.asset(
                'assets/images/onboarding_1.png',
                width: 177,
                height: 140,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Kami hanya menjual \nSepatu Berkualitas Terpercaya',
                style: primaryTextStyle.copyWith(
                    fontSize: 14, fontWeight: semiBold, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
    }

    Widget contentSearch() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: onboardingColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {  },
                        child: Text(
                          'Terpopuler',
                          style: primaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: onboardingColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {  },
                        child: Text(
                          'Semua',
                          style: primaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: onboardingColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.more_vert_rounded,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: 
                [ProductPopulerTile(
                  image: 'assets/images/product_1.png',
                  kategory: 'Nike',
                  name: 'Nike Air Max Axis ',
                  price: '\$ 189.00',
                ),
                ProductPopulerTile(
                    image: 'assets/images/product_5.png',
                    kategory: 'Nike',
                    name: 'Nike Flyknit Racer',
                    price: '\$ 239.00',
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: 
                [ProductPopulerTile(
                  image: 'assets/images/product_6.png',
                  kategory: 'Nike',
                  name: 'Nike Air Jordan',
                  price: '\$ 279.00',
                ),
                ProductPopulerTile(
                    image: 'assets/images/product_7.png',
                    kategory: 'Nike',
                    name: 'Nike Air Stripe',
                    price: '\$ 151.00',
                  ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: 
                [ProductPopulerTile(
                  image: 'assets/images/product_1.png',
                  kategory: 'Nike',
                  name: 'Nike Air Max Axis ',
                  price: '\$ 189.00',
                ),
                ProductPopulerTile(
                    image: 'assets/images/product_5.png',
                    kategory: 'Nike',
                    name: 'Nike Flyknit Racer',
                    price: '\$ 239.00',
                  ),
              ],
            ),
            SizedBox(
              height: defaultMargin,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              // contentEmpty(),
              contentSearch(),
            ],
          ),
        ],
      ),
    );
  }
}
