import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/pages/home/components/header_with_searchbox.dart';
import 'package:plant_app_flutter_ui/pages/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen.
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
        ],
      ),
    );
  }
}
