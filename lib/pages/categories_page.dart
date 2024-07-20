import 'package:flutter/material.dart';
import '../widgets/slide_menu.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'العناية الشخصية',
      'العناية بالوجه',
      'العناية بالجسم',
      'العناية بالشعر',
      'العناية بالصحة',
      'الأم والطفل',
      'مستحضرات تجميل',
      'مستحضرات التجميل',
      'مساحيق العناية',
      'عطور',
      'مكياج',
      'الأدوية',
      'المطهر',
      'الخضر و الفواكه',
      'الأسماك',
      'اللحوم',
      'الطائرات',
      'القطارات',
      'اللوازم',
      'المعجنات',
      'المعدات',
      'منتجات الأطفال',
      'الأجهزة'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: 
        
        Builder(
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
        actions: [IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            // Handle cart icon press
          },
          color: Colors.grey,
        ),
          
        ],
      ),
      endDrawer: SlideMenu(),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              categories[index],
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Handle category tap
            },
          );
        },
      ),
    );
  }
}
