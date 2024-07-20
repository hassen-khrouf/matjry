import 'package:flutter/material.dart';

class SlideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFAB515),
            ),
            child: Text('متجري', textAlign: TextAlign.right),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('الرئيسية', textAlign: TextAlign.right),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('التصنيفات', textAlign: TextAlign.right),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('السلة', textAlign: TextAlign.right),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.support),
            title: Text('الدعم الفني', textAlign: TextAlign.right),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('من نحن', textAlign: TextAlign.right),
            onTap: () {
              // Handle the tap
            },
          ),
          SwitchListTile(
            title: Text('الوضع المظلم', textAlign: TextAlign.right),
            value: false,
            onChanged: (bool value) {
              // Handle the switch change
            },
          ),
        ],
      ),
    );
  }
}
