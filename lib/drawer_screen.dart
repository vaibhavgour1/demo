import 'package:demo/task_home_screens.dart';
import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';

// ignore: must_be_immutable
class DrawerScreen extends KFDrawerContent {
  DrawerScreen({
    Key? key,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<DrawerScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    const TaskHomeScreen(),
    const Text(
      'InProgress..',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    const Text(
      'InProgress..',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    const Text(
      'InProgress..',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 100.0,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
        ),
        child: Scaffold(
          backgroundColor: const Color(0xffFFFFFF),
          body: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Material(
                      elevation: 0,
                      shadowColor: Colors.black12,
                      borderOnForeground: true,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: Image.asset(
                          "images/Group 3617.png",
                          height: 30,
                          width: 40,
                        ),
                        onPressed: widget.onMenuPressed,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: _widgetOptions.elementAt(_selectedIndex),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset(
                  "images/home.png",
                  color: const Color(0xff5C5C5C),
                ),
                activeIcon: Image.asset(
                  "images/home.png",
                  color: const Color(0xffE36DA6),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/package.png"),
                label: 'Packages',
                activeIcon: Image.asset(
                  "images/package.png",
                  color: const Color(0xffE36DA6),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/booking.png"),
                activeIcon: Image.asset(
                  "images/booking.png",
                  color: const Color(0xffE36DA6),
                ),
                label: 'Bookings',
              ),
              BottomNavigationBarItem(
                icon: Image.asset("images/profile.png"),
                activeIcon: Image.asset(
                  "images/profile.png",
                  color: const Color(0xffE36DA6),
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            unselectedItemColor: const Color(0xff5C5C5C),
            unselectedLabelStyle: const TextStyle(color: Color(0xff5C5C5C)),
            selectedItemColor: const Color(0xffE36DA6),
            elevation: 0,
            selectedIconTheme: const IconThemeData(color: Color(0xffE36DA6)),
            backgroundColor: const Color(0xffFFFFFF),
            type: BottomNavigationBarType.fixed,
            iconSize: 50,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
