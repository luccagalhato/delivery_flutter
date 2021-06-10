import 'package:flutter/material.dart';
import 'package:timeless/screens/first_screen/carousel_advertising_home/slide_tile.dart';

// ignore: must_be_immutable
class AdvertisingHome extends StatefulWidget {
  @override
  _AdvertisingHomeState createState() => _AdvertisingHomeState();
}

class _AdvertisingHomeState extends State<AdvertisingHome> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  final _listSlide = [
    {"id": 0, "image": "images/propaganda.png"},
    {"id": 1, "image": "images/propaganda.png"},
    {"id": 2, "image": "images/propaganda.png"},
    {"id": 3, "image": "images/propaganda.png"},
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      final int next = _pageController.page.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return SafeArea(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              // ignore: sized_box_for_whitespace
              Container(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _listSlide.length,
                  itemBuilder: (_, int currentIndex) {
                    final bool activePage = currentIndex == _currentPage;
                    return SlideTile(
                      activePage: activePage,
                      image: _listSlide[currentIndex]['image'] as String,
                    );
                  },
                ),
              ),
              _buildBullets(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBullets() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _listSlide.map((i) {
        return InkWell(
          onTap: () {
            setState(() {
              _pageController.jumpToPage(i['id'] as int);
              // ignore: unnecessary_statements
              _currentPage == i['id'];
            });
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: _currentPage == i['id']
                  ? const Color(0xff7E031D)
                  : const Color(0xFFE5E5E5),
            ),
          ),
        );
      }).toList(),
    );
  }
}
