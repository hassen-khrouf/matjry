import 'package:flutter/material.dart';
import 'package:matjry/widgets/image_carousel.dart';
import '../widgets/section_title.dart';
import '../widgets/product_list.dart';
import '../widgets/slide_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              color: Colors.grey,
            ),
          ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'بحث...',
            border: InputBorder.none,
          ),
          textAlign: TextAlign.right,
        ),
        actions: [ IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            // Handle cart icon press
          },
          color: Colors.grey,
        ),

        
        ],
      ),
      endDrawer: SlideMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselWithIndicator(),
            SectionTitle(title: 'الوجه'),
            ProductList(category: 'face'),
            SectionTitle(title: 'فرش و أدوات المكياج'),
            ProductList(category: 'brushes'),
            SectionTitle(title: 'الحواجب'),
            ProductList(category: 'brows'),
          ],
        ),
      ),
    );
  }
}
