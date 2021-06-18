import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/pages/detail/components/image_and_icons.dart';
import 'package:plant_app_flutter_ui/pages/detail/components/title_and_price.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class Body extends StatelessWidget {
  // const Body({});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
        ],
      ),
    );
  }
}
