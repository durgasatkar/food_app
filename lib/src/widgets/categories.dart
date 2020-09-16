import 'package:flutter/material.dart';
import 'package:flutter_app2/src/commons.dart';
import 'package:flutter_app2/src/models/category.dart';
import 'package:flutter_app2/src/widgets/custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "img1.jpg"),
  Category(name: "Steak", image: "steak.jpg"),
  Category(name: "Fast Food", image: "fast_food.jpg"),
  Category(name: "Deserts", image: "sweet.jpg"),
  Category(name: "Beer", image: "beer.jpg"),
  Category(name: "Sea Food", image: "seefood.jpg")
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: Colors.red[100],
                        offset: Offset(4, 6),
                        blurRadius: 20,
                        spreadRadius: 4.0)
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(
                      "assets/images/${categoriesList[index].image}",
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 14,
                  color: Colors.black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
