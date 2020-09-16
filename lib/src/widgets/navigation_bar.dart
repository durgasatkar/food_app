import 'package:flutter/material.dart';
import 'package:flutter_app2/src/commons.dart';
import 'package:flutter_app2/src/widgets/custom_text.dart';

class Navigation_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      color: white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 2,
                ),
                CustomText(text: "HOME")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.track_changes),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 2,
                ),
                CustomText(text: "Near By")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.shopping_basket),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 2,
                ),
                CustomText(text: "Cart")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 2,
                ),
                CustomText(text: "Account")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
