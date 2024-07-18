import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const ProductCard({required this.image, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(image, fit: BoxFit.cover),
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
          ),
          Text(
            price,
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
