import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_flutter_ui/components/bottom_navbar.dart';
import 'package:plant_app_flutter_ui/pages/home/components/body.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class HomePage extends StatelessWidget {
  // const HomePage({}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context, size),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar(BuildContext context, Size size) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Menu Button Clicked',
                style: TextStyle(color: primaryColor),
              ),
              duration: const Duration(milliseconds: 1000),
              width: size.width * 0.7, // Width of the SnackBar.
              padding: const EdgeInsets.symmetric(
                horizontal: 18, // Inner padding for SnackBar content.
              ),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: backgroundColor,
            ),
          );
        },
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
        ),
      ),
    );
  }
}
