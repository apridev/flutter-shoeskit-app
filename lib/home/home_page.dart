import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';
import 'package:shoeskit/widget/kategory.dart';
import 'package:shoeskit/widget/product_populer.dart';
import 'package:shoeskit/widget/sepatu_terbaru.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children:
            // !Header Profile
            [
          Stack(
            children: [
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: AssetImage('assets/images/Rectangle_img.png'))),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 60, left: defaultMargin, right: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/profile_home.png',
                          width: 40,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Selamat Datang',
                              style: whiteTextStyle.copyWith(fontSize: 12),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Pablo Amore',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 12, fontWeight: semiBold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: backgroundColor1,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/notification_icon.png',
                            width: 24,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // !Banner
              Container(
                margin: EdgeInsets.only(
                    top: 140, left: defaultMargin, right: defaultMargin),
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: backgroundColor1,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10, // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Temukan Berbagai Sepatu \nimpianmu disini.',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: semiBold,
                                height: 1.5),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: primaryColor),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Jelajahi',
                                  style: whiteTextStyle.copyWith(
                                      fontSize: 10, fontWeight: semiBold),
                                )),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/product_banner.png',
                            width: 100,
                            height: 90,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // !Kategory
          Container(
            margin: EdgeInsets.only(
                top: defaultMargin, left: defaultMargin, right: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kategory',
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          right: 8,
                        ),
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: primaryColor,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Semua',
                            style: whiteTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ),
                      ),
                      KategoryTile(
                        name: 'Adidas',
                      ),
                      KategoryTile(
                        name: 'Nike',
                      ),
                      KategoryTile(
                        name: 'Puma',
                      ),
                      KategoryTile(
                        name: 'Specs',
                      ),
                      KategoryTile(
                        name: 'Lotto',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 20, left: defaultMargin, right: defaultMargin),
            child: Text(
              'Populer',
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductPopulerTile(
                    image: 'assets/images/product_1.png',
                    kategory: 'Nike',
                    name: 'Nike Air Max Axis ',
                    price: '\$ 189.00',
                  ),
                  ProductPopulerTile(
                    image: 'assets/images/product_2.png',
                    kategory: 'Adidas',
                    name: 'Adidas NMD R1',
                    price: '\$ 231.00',
                  ),
                  ProductPopulerTile(
                    image: 'assets/images/product_3.png',
                    kategory: 'Vans',
                    name: 'Vans Skool Ori',
                    price: '\$ 108.00',
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sepatu Terbaru',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold
                  ),
                ),
                Text(
                  'Lainnya',
                  style: inputTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SepatuTerbaru(
                image: 'assets/images/product_4.png',
                name: 'Adidas Ultraboots 2.1',
                kategory: 'Adidas',
                price: '\$ 299.00',
              ),
              SepatuTerbaru(
                image: 'assets/images/product_3.png',
                name: 'Vans Skool Ori',
                kategory: 'Vans',
                price: '\$ 108.00',
              ),
              SepatuTerbaru(
                image: 'assets/images/product_2.png',
                name: 'Adidas NMD R1',
                kategory: 'Adidas',
                price: '\$ 231.00',
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
}
