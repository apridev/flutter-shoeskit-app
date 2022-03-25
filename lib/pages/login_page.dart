import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isHiddenPassword = true;

  @override

  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_img.png',
                width: 65,
              )
            ],
          ),
        ),
      );
    }

    Widget headerTitle() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Center(
          child: Text(
            'Masuk',
            style:
                primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
        ),
      );
    }

    Widget titleEmail() {
      return Container(
        margin:
            EdgeInsets.only(top: 50, left: defaultMargin, right: defaultMargin),
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
                      hintText: 'Masukan email', 
                      hintStyle: TextStyle(fontSize: 14, color: inputColor,)
                  ),
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
                  cursorColor: inputColor,
                  obscureText: isHiddenPassword,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Masukan Password', 
                      hintStyle: TextStyle(fontSize: 14, color: inputColor,),
                  ),
                ),
              ),
              InkWell(
                onTap: _tooglePasswordView,
                child: isHiddenPassword == true ? Image.asset(
                  'assets/icons/eye_icon.png', 
                  width: 24,
                ) : Image.asset('assets/icons/eye_off.png', width: 24,)
              )
            ],
          ),
        ),
      );
    }

    Widget buttomNav(){
      return Container(
        margin: EdgeInsets.only(
          top: 60,
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
            onPressed: (){
              Navigator.pushNamed(context, '/main_page');
            },
            child: Text('Masuk', style: whiteTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold
            ),),
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
              Text('Belum punya akun?', style: primaryTextStyle.copyWith(
                fontSize: 12
               ),
              ),
              SizedBox(
                width: 2,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/register_page');
                },
                child: Text(' Daftar Sekarang', style: blueTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            headerTitle(),
            titleEmail(),
            inputEmail(),
            titlePassword(),
            inputPassword(),
            buttomNav(),
            footer()
          ],
        ),
      ),
    );
  }
  void _tooglePasswordView(){
    if(isHiddenPassword == true){
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {
      
    });
  }
}
