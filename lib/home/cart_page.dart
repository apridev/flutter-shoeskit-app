import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';
import 'package:shoeskit/widget/product_cart_tile.dart';

class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget appbarCart(){
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded, 
            color: primaryColor
          ),
        ),
        title: Text('Keranjang', style: primaryTextStyle.copyWith(
          fontSize: 14,
          fontWeight: semiBold
        ),),
        elevation: 1,
        centerTitle: true,
      );
    }

    Widget titleCart(){
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Semua',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold
              ),
            ),
            Text(
              'Ubah',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold
              ),
            ),
          ],
        ),
      );
    }

    Widget produtCart(){
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Column(
          children: [
            ProductCartTile(
              images: 'assets/images/product_1.png',
              category: 'Nike',
              name: 'Nike Air Max Axis ',
              price: '\$ 378.00',
              number: '2',
            ),
            ProductCartTile(
              images: 'assets/images/product_6.png',
              category: 'Nike',
              name: 'Nike Air Jordan',
              price: '\$  279.00',
              number: '1',
            ),
          ],
        ),
      );
    }

    Widget buttomNav(){
      return Container(
        padding: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin
        ),
        width: defaultMargin,
        height: 166,
        decoration: BoxDecoration(
          color: backgroundColor1,
          boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 3,
      ),
    ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Harga', 
                  style: primaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold
                ),
                ),
                Text(
                  '\$657.00',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/icons/garis_lurus.png'
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor
              ),
              child: TextButton(
                onPressed: (){},
                child: Text(
                  'Pembayaran',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: appbarCart(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleCart(),
              produtCart(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: buttomNav(),
    );
  }
}