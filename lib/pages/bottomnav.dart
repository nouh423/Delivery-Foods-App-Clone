import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:food_delivery_app/pages/home.dart';
import 'package:food_delivery_app/pages/order.dart';
import 'package:food_delivery_app/pages/profile.dart';
import 'package:food_delivery_app/pages/wallet.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTableindex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = const Home();
    order = const Order();
    profile = const Profile();
    wallet = const Wallet();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTableindex = index;
          });
        },
        items: [
          Icon(
            MdiIcons.homeOutline,
            // Icons.home_outlined,
            color: Colors.white,
          ),
          FaIcon(
            MdiIcons.shoppingOutline,
            // Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            MdiIcons.walletOutline,
            color: Colors.white,
          ),
          Icon(
            // Icons.person_outline
            MdiIcons.accountOutline,

            color: Colors.white,
          ),
        ],
      ),
      body: pages[currentTableindex],
    );
  }
}
