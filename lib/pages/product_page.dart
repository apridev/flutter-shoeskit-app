import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';
import 'package:shoeskit/widget/size_tile.dart';

class ProductPage extends StatelessWidget {

  Widget buttomNav(){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40
      ),
      width: double.infinity,
      height: 85,
      decoration: BoxDecoration(
        color: backgroundColor1
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: backgroundColor1,
              boxShadow: [
                BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                    ),
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/like_active_icon.png',
                  width: 22,
                ),
              ],
            ),
          ),
          Container(
            width: 250,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: primaryColor
            ),
            child: TextButton(
              onPressed: (){}, 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Beli Sekarang',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: productColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.only(
                      top: defaultMargin,
                      left: defaultMargin,
                      right: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: productColor,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 24,
                        ),
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: productColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/cart_icon_black.png',
                              width: 18,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/product_1.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/scrool_img.png',
                    width: 52,
                  ),
                ],
              ),
              // !Border Produk
              Container(
                margin: EdgeInsets.only(
                    top: 40, left: defaultMargin, right: defaultMargin),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  color: backgroundColor1,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 18
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nike',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Nike Air Max Axis ',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '\$ 189.00',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              // !Title Ukuran
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin
                ),
                child: Text(
                  'Ukuran - Semua Jenis',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium
                  ),
                ),
              ),
              // !size
              Container(
                margin: EdgeInsets.only(
                  top: 24,
                  left: defaultMargin,
                  right: defaultMargin
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizeTile(
                      ukuran: '38',
                    ),
                    SizeTile(
                      ukuran: '39',
                    ),
                    SizeTile(
                      ukuran: '40',
                    ),
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              '41',
                              style:
                                  whiteTextStyle.copyWith(fontSize: 15, fontWeight: medium),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizeTile(
                      ukuran: '42',
                    ),
                    SizeTile(
                      ukuran: '43',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              // !Title Ukuran
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin
                ),
                child: Text(
                  'Deskripsi',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin
                ),
                child: Column(
                  children: [
                    Text('Nike Air Max Axis merupakan sepatu yang dapat Kamu jadikan pilihan untuk berolahraga. Terbuat dari bahan pilihan berkualitas yang akan nyaman dipakai bahkan dalam waktu yang lama.', style: inputTextStyle.copyWith(fontSize: 12, fontWeight: reguler, height: 1.5,
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: buttomNav(),
    );
  }
}
