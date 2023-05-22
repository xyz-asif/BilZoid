import 'package:badges/badges.dart';
import 'package:cart/main.dart';
import 'package:cart/screens/maintain/imports.dart';
import 'package:cart/screens/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import '../pages/bills.dart';
import '../pages/search.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  List<ScreenHiddenDrawer> pages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "HOME",
            baseStyle: TextStyle(
                fontFamily: "lb",
                fontSize: 15,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
            selectedStyle: const TextStyle(),
            colorLineSelected: Colors.black),
        MyApp(),
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "DETAILS",
              baseStyle: TextStyle(
                  fontFamily: "lb",
                  fontSize: 15,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
              selectedStyle: TextStyle(),
              colorLineSelected: Colors.black),
          Profile()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "INVOICES",
              baseStyle: TextStyle(
                  fontFamily: "lb",
                  fontSize: 15,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
              selectedStyle: TextStyle(),
              colorLineSelected: Colors.black),
          Invoices()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "STOCK",
              baseStyle: TextStyle(
                  fontFamily: "lb",
                  fontSize: 15,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
              selectedStyle: TextStyle(),
              colorLineSelected: Colors.black),
          Edit())
    ];
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: HiddenDrawerMenu(
          withAutoTittleName: false,
          actionsAppBar: [
            // Badge(
            //   badgeColor: Color(0xFFB98434),
            //   animationType: BadgeAnimationType.scale,
            //   position: BadgePosition.topStart(top: 12, start: 26),
            //   badgeContent: Obx((() => Text(a.k.length.toString()))),
            //   child: Padding(
            //    padding:  EdgeInsets.only(right: w/12,top: h/50),
            //     child: IconButton(
            //       onPressed: () {
            //     Get.to(() => P());
            //       },
            //       icon: const Icon(
            //         CupertinoIcons.bag,
            //         color: Colors.black,
            //       ),
            //     ),
            //   ),
            // ),
          ],
          leadingAppBar: Padding(
            padding: EdgeInsets.only(left: w / 12, top: h / 50),
            child: Icon(
              CupertinoIcons.square_grid_2x2,
              color: Colors.black,
            ),
          ),
          elevationAppBar: 0,
          backgroundColorAppBar: Colors.white,
          screens: pages,
          slidePercent: 55,
          backgroundColorMenu: const Color(0xFFB98434)),
    );
  }
}
