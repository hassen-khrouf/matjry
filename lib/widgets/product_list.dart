import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class ProductList extends StatelessWidget {
  final String category;

  const ProductList({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> products = [
      {'image': 'assets/11.png', 'title': 'بودرة سائبة شفافة', 'price': '42.92 رس'},
      {'image': 'assets/12.webp', 'title': 'لوحة بودرة تحديد وجهه', 'price': '99 رس'},
      {'image': 'assets/image3.png', 'title': 'مجموعة فرش مكياج', 'price': '120 رس'},
      {'image': 'assets/image4.png', 'title': 'مناشف إزالة المكياج', 'price': '18 رس'},
      {'image': 'assets/image5.png', 'title': 'قلم لتحديد الحواجب', 'price': '22 رس'},
      {'image': 'assets/image6.png', 'title': 'جل حواجب من ميك أب', 'price': '25.9 رس'},
    ];

    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            image: products[index]['image']!,
            title: products[index]['title']!,
            price: products[index]['price']!,
          );
        },
      ),
    );
  }
}
