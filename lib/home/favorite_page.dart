import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class FavoritePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget headerApp(){
      return AppBar(
        centerTitle: true,
        title: Text('Favorite', style: primaryTextStyle.copyWith(
          fontSize: 16,
          fontWeight: semiBold
        ),
        ),
        backgroundColor: backgroundColor1,
        elevation: 1,
        automaticallyImplyLeading: false,
      );
    }

    Widget contentEmpty(){
      return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/favorite_shoes.png',
                width: 81,
                height: 52,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Kamu belum mempunyai \nproduk Favorit',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold,
                  height: 1.5
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                width: 130,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Text('Beranda', style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold
                  ),),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: headerApp(),
      body: contentEmpty(),
    );
  }
}