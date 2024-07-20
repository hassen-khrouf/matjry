import 'package:flutter/material.dart';
import 'package:matjry/widgets/image_carousel.dart';
import '../widgets/section_title.dart';
import '../widgets/product_list.dart';
import '../widgets/slide_menu.dart'; // Import the SlideMenu
import '../widgets/bottom_navigation.dart'; // Import the BottomNavigation

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Handle navigation based on index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            // Handle cart icon press
          },
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
          Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                color: Colors.black,
              );
            },
          ),
        ],
      ),
      endDrawer: SlideMenu(), // Add the SlideMenu
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
      bottomNavigationBar: BottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
