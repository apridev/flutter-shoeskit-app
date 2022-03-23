import 'package:flutter/material.dart';
import 'package:shoeskit/template.dart';

class FavoritePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Favorite Page')
          ],
        ),
      ),
    );
  }
}