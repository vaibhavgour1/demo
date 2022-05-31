import 'package:demo/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kf_drawer/kf_drawer.dart';

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({Key? key}) : super(key: key);

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> with TickerProviderStateMixin {
  KFDrawerController controller = KFDrawerController(initialPage: KFDrawerContent());

  @override
  void initState() {
    super.initState();
    controller = KFDrawerController(
      initialPage: ClassBuilder.fromString('DrawerScreen'),
      items: [
        KFDrawerItem.initWithPage(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Home', style: TextStyle(color: Color(0xff262F71), fontSize: 16, fontWeight: FontWeight.w500)),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 6,
                width: 200,
                child: const Divider(
                  color: Color(0xffE36DA6),
                  thickness: 0.3,
                ),
              )
            ],
          ),
          // page: DrawerScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Book A Nanny',
                  style: TextStyle(color: Color(0xff262F71), fontSize: 16, fontWeight: FontWeight.w500)),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 6,
                width: 200,
                child: const Divider(
                  color: Color(0xffE36DA6),
                  thickness: 0.3,
                ),
              )
            ],
          ),
          // page: DrawerScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('How It Works',
                  style: TextStyle(color: const Color(0xff262F71), fontSize: 16, fontWeight: FontWeight.w500)),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 6,
                width: 200,
                child: const Divider(
                  color: Color(0xffE36DA6),
                  thickness: 0.3,
                ),
              )
            ],
          ),
          // page: DrawerScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Why Nanny Vanny',
                  style: TextStyle(color: Color(0xff262F71), fontSize: 16, fontWeight: FontWeight.w500)),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 6,
                width: 200,
                child: const Divider(
                  color: Color(0xffE36DA6),
                  thickness: 0.3,
                ),
              )
            ],
          ),
          // page: DrawerScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('My Bookings',
                  style: TextStyle(color: Color(0xff262F71), fontSize: 16, fontWeight: FontWeight.w500)),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 6,
                width: 200,
                child: const Divider(
                  color: Color(0xffE36DA6),
                  thickness: 0.3,
                ),
              ),
            ],
          ),
          // page: DrawerScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('My Profile',
                  style: TextStyle(color: const Color(0xff262F71), fontSize: 16, fontWeight: FontWeight.w500)),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 6,
                width: 200,
                child: const Divider(
                  color: Color(0xffE36DA6),
                  thickness: 0.3,
                ),
              )
            ],
          ),
          // page: DrawerScreen(),
        ),
        KFDrawerItem.initWithPage(
          text: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Support', style: TextStyle(color: Color(0xff262F71), fontSize: 16, fontWeight: FontWeight.w500)),
            ],
          ),
          // page: DrawerScreen(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      extendBody: true,
      body: KFDrawer(
        footer: Container(),
        shadowOffset: 10,
        controller: controller,
        minScale: 0.80,
        scrollable: true,
        drawerWidth: 0.80,
        disableContentTap: true,
        header: Align(
          alignment: const Alignment(-0.6, -1.0),
          child: Container(
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                    "images/crical.png",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Emily Cyrus",
                  style: TextStyle(color: Color(0xffE36DA6), fontSize: 25, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(10, 3), // Shadow position
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffFFFFFF),
              Color(0xffFFFFFF),
            ],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
