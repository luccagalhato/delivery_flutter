import 'package:flutter/material.dart';
import 'package:timeless/components/login_component.dart';
import 'package:timeless/components/utils/colors.dart';
import 'package:timeless/screens/login_screen/slide_tile.dart';

// ignore: must_be_immutable
class NewLoginScreen extends StatefulWidget {
  @override
  _NewLoginScreenState createState() => _NewLoginScreenState();
}

class _NewLoginScreenState extends State<NewLoginScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  // ignore: unused_field
  int _currentPage = 0;

  final _listSlide = [
    {'id': 0, 'image': 'images/logo_timeless_login.png'},
    {'id': 1, 'image': 'images/logo_timeless_login.png'},
    {'id': 2, 'image': 'images/logo_timeless_login.png'},
    {'id': 3, 'image': 'images/logo_timeless_login.png'},
    {'id': 4, 'image': 'images/logo_timeless_login.png'}
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

  final GlobalKey<ScaffoldState> _scaffoldKey =
      const GlobalObjectKey<ScaffoldState>('LoginScreen');

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        key: _scaffoldKey,
        body: Form(
          key: _formKey,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              const BackgroundImageWidget(
                color: AppColors.primary,
              ),
              SafeArea(
                child: ListView(
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
                              final bool activePage =
                                  currentIndex == _currentPage;
                              return SlideTile(
                                activePage: activePage,
                                image:
                                    _listSlide[currentIndex]['image'] as String,
                              );
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                        ),
                        _buildBullets(),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 160,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: const BorderSide(color: Color(0x000fffff)),
                            ),
                            color: const Color(0xff7E031D),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                '/LoginScreen',
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 20,
                          bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "You are not a member?",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff7F001D),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                '/SignUp',
                              );
                            },
                            child: const Text(
                              " Register",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffEDCBD1),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBullets() {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
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
              margin: const EdgeInsets.all(7),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: _currentPage == i['id']
                    ? Colors.white
                    : const Color(0xFF737373),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
