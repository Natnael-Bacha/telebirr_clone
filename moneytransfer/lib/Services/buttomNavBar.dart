import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:moneytransfer/pages/apps.dart';
import 'package:moneytransfer/pages/home.dart';
import 'package:moneytransfer/pages/payment.dart';

// ignore: must_be_immutable

class Navbar extends StatefulWidget {
  late final int indexNav;

  Navbar({required this.indexNav});

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  void initState() {
    super.initState();

    final CurvedNavigationBarState? navBarState =
        _bottomNavigationKey.currentState;
    navBarState?.setPage(widget.indexNav);

    print('Widget built!');
  }

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: CurvedNavigationBar(
        index: widget.indexNav,
        backgroundColor: Color(0xff8CD044),
        color: Color(0xff8CD044),
        items: [
          Container(
            height: 50,
            child: Column(
              children: [
                Icon(Icons.home_outlined, color: Colors.white, size: 30),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Column(
              children: [
                Icon(Icons.payment, color: Colors.white, size: 30),
                Text(
                  'Payment',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Column(
              children: [
                Icon(Icons.apps, color: Colors.white, size: 30),
                Text(
                  'Apps',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Column(
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.chat_bubble_outline_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Text(
                  'Engage',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Column(
              children: [
                Icon(Icons.person_outline_rounded,
                    color: Colors.white, size: 30),
                Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            if (index == 0) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            }
           else if (index == 1) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()));
            }
           else if (index == 2) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Apps()));
            }

          });
        },
      ),
    );
  }
}
