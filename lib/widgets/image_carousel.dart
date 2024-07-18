import 'package:flutter/material.dart';

class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: PageView(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              Image.asset('assets/1.png', fit: BoxFit.cover),
              Image.asset('assets/2.png', fit: BoxFit.cover),
              Image.asset('assets/3.png', fit: BoxFit.cover),
              Image.asset('assets/4.png', fit: BoxFit.cover),
              Image.asset('assets/5.png', fit: BoxFit.cover),
              Image.asset('assets/6.png', fit: BoxFit.cover),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(6, (index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
              height: 8.0,
              width: _currentPage == index ? 16.0 : 8.0,
              decoration: BoxDecoration(
                color: _currentPage == index ? Color(0xFFFAB515) : Colors.grey,
                borderRadius: BorderRadius.circular(8.0),
              ),
            );
          }),
        ),
      ],
    );
  }
}
