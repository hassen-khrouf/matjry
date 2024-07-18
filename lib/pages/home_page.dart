import 'package:flutter/material.dart';
import 'package:matjry/widgets/image_carousel.dart';
import '../widgets/section_title.dart';
import '../widgets/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
          color: Colors.black,
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'بحث...',
            border: InputBorder.none,
          ),
          textAlign: TextAlign.right,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWithIndicator(), // Updated widget name
            SectionTitle(title: 'الوجه'),
            ProductList(category: 'face'),
            SectionTitle(title: 'فرش و أدوات المكياج'),
            ProductList(category: 'brushes'),
            SectionTitle(title: 'الحواجب'),
            ProductList(category: 'brows'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'التصنيفات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'تسجيل الدخول',
          ),
        ],
      ),
    );
  }
}
