import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: defaultMargin,
                  right: defaultMargin
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/profile_img.png', 
                      width: 50,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pablo Diablo Pablo',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold
                            ),
                          ),
                          Text(
                            '@pablodiablo',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: medium
                            ),
                          )
                        ],
                      ),
                    ),
                    Image.asset('assets/icons/settings_icon.png', width: 24,),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: defaultMargin,
                  right: defaultMargin
                ),
                child: Divider(
                  color: inputColor,
                  thickness: 0.5,
                ),
              ),
             
              Container(
                margin: EdgeInsets.only(
                  top: 35,
                  left: defaultMargin,
                  right: defaultMargin
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aktivitas',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daftar Transaksi',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios, 
                          color: primaryColor, 
                          size: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Produk Favorit',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios, 
                          color: primaryColor, 
                          size: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Petunjuk Pemesanan',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios, 
                          color: primaryColor, 
                          size: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Text(
                      'Pusat Bantuan',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: semiBold
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pesanan Komplain',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios, 
                          color: primaryColor, 
                          size: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bantuan Service Aplikasi',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios, 
                          color: primaryColor, 
                          size: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rate App',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios, 
                          color: primaryColor, 
                          size: 12,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Keluar',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios, 
                          color: primaryColor, 
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}