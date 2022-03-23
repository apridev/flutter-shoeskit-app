import 'package:flutter/material.dart';
import 'package:shoeskit/home/favorite_page.dart';
import 'package:shoeskit/home/home_page.dart';
import 'package:shoeskit/home/profile_page.dart';
import 'package:shoeskit/home/search_page.dart';
import 'package:shoeskit/template.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget cartButtom(){
      return FloatingActionButton(
        onPressed: (){},
        backgroundColor: primaryColor,
        child: Image.asset(
          'assets/icons/cart_icon.png',
          width: 24,
        ),
      );
    }

    Widget customButtomNav(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value){
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: Color(0xffFFFEFE),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home_icon.png', width: 24,
                  color: currentIndex == 0 ? primaryColor : iconNavbarColor,
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    right: 50
                  ),
                  child: Image.asset(
                    'assets/icons/search_icon.png', width: 24,
                    color: currentIndex == 1 ? primaryColor : iconNavbarColor,
                  ),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    left: 50
                  ),
                  child: Image.asset(
                    'assets/icons/like_icon.png', width: 24,
                    color: currentIndex == 2 ? primaryColor : iconNavbarColor,
                  ),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/profile_icon.png', width: 24,
                  color: currentIndex == 3 ? primaryColor : iconNavbarColor,
                ),
                label: ''
              ),
            ]
          ),
        ),
      );
    }

    Widget body(){
      switch (currentIndex) {
        case 0 :
          return HomePage();
          break;
        case 1 :
        return SearchPage();
        break;
        case 2 :
        return FavoritePage();
        break;
        case 3 :
        return ProfilePage();
        break;
        default: 
        return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtomNav(),
      body: body(),
    );
  }
}