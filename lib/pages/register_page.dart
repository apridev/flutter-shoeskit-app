import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          top: 50
        ),
        child: Center(
          child: Text(
            'Daftar',
            style: primaryTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold
            ),
          )
        ),
      );
    }

    Widget titleName() {
      return Container(
        margin:
            EdgeInsets.only(top: 50, left: defaultMargin, right: defaultMargin),
        child: Column(
          children: [
            Text(
              'Nama',
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      );
    }

    Widget inputName() {
      return Container(
        margin:
            EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: productColor),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Masukan Nama', hintStyle: inputTextStyle),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget titleUsername() {
      return Container(
        margin:
            EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
        child: Column(
          children: [
            Text(
              'Username',
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      );
    }

    Widget inputUsername() {
      return Container(
        margin:
            EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: productColor),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Masukan Username', hintStyle: inputTextStyle),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget titleEmail() {
      return Container(
        margin:
            EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
        child: Column(
          children: [
            Text(
              'Email',
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      );
    }

    Widget inputEmail() {
      return Container(
        margin:
            EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: productColor),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Masukan Email', hintStyle: inputTextStyle),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget titlePassword() {
      return Container(
        margin:
            EdgeInsets.only(top: 24, left: defaultMargin, right: defaultMargin),
        child: Column(
          children: [
            Text(
              'Password',
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      );
    }

    Widget inputPassword() {
      return Container(
        margin:
            EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: productColor),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  obscureText: isHiddenPassword,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Masukan Password', 
                      hintStyle: inputTextStyle),
                ),
              ),
              InkWell(
                onTap: _togglePasswordView,
                child: isHiddenPassword == true ? Image.asset(
                  'assets/icons/eye_icon.png', 
                  width: 24,
                ) : Image.asset('assets/icons/eye_off.png', width: 24,),
              ),
            ],
          ),
        ),
      );
    }

    Widget buttomNav(){
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          left: defaultMargin,
          right: defaultMargin
        ),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: primaryColor
          ),
          child: TextButton(
            onPressed: (){},
            child: Text(
              'Daftar', style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),
            ),
          ),
        ),
      );
    }

    Widget footer(){
      return Container(
        margin: EdgeInsets.only(
          top: 24
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sudah punya akun?', style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
              ),
              SizedBox(
                width : 4
              ),
              Text(
                'Masuk', style: blueTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              titleName(),
              inputName(),
              titleUsername(),
              inputUsername(),
              titleEmail(),
              inputEmail(),
              titlePassword(),
              inputPassword(),
              buttomNav(),
              footer()
            ],
          ),
        ],
      ),
    );
  }

  void _togglePasswordView(){
    if(isHiddenPassword == true){
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {
      
    });
  }

}