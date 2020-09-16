import 'package:flutter/material.dart';
import 'package:flutter_app2/src/commons.dart';
import 'package:flutter_app2/src/models/products.dart';
import 'package:flutter_app2/src/widgets/custom_text.dart';

List<Product> productsList = [
  Product(
      name: "Cereals",
      price: 15.99,
      rating: 4.2,
      vendor: "GoodFoos",
      wishList: true,
      image: "sweet.jpg"),
  Product(
      name: "Pizza",
      price: 30.99,
      rating: 4.5,
      vendor: "GoodFoos",
      wishList: true,
      image: "img1.jpg"),
  Product(
      name: "Burger",
      price: 40.99,
      rating: 3.2,
      vendor: "GoodFoos",
      wishList: false,
      image: "seefood.jpg"),
  Product(
      name: "Pasta",
      price: 25.99,
      rating: 3.5,
      vendor: "GoodFoos",
      wishList: false,
      image: "fast_food.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          itemCount: productsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: 200,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.red[100],
                        offset: Offset(4, 6),
                        blurRadius: 20,
                        spreadRadius: 4.0),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: Image.asset(
                        "assets/images/${productsList[index].image}",
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            text: productsList[index].name,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Padding(
                            padding: EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: productsList[index].wishList
                                      ? Icon(
                                          Icons.favorite,
                                          color: red,
                                          size: 18,
                                        )
                                      : Icon(
                                          Icons.favorite_border,
                                          color: red,
                                          size: 18,
                                        )),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productsList[index].rating.toString(),
                                color: Colors.grey,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star_half,
                              color: red,
                              size: 16,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CustomText(
                              text: "\$${productsList[index].price}"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
