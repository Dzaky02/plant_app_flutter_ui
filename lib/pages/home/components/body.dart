import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/models/plant_model.dart';
import 'package:plant_app_flutter_ui/pages/home/components/featured_plants.dart';
import 'package:plant_app_flutter_ui/pages/home/components/header_with_searchbox.dart';
import 'package:plant_app_flutter_ui/pages/home/components/list_of_recomend_plants.dart';
import 'package:plant_app_flutter_ui/pages/home/components/title_with_more_btn.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class Body extends StatelessWidget {
  final List<Plant> listOfPlants = [
    Plant(
      image: "assets/images/image_1.png",
      title: "Samantha",
      country: "Russia",
      price: 440,
    ),
    Plant(
      image: "assets/images/image_2.png",
      title: "Angelica",
      country: "Russia",
      price: 440,
    ),
    Plant(
      image: "assets/images/image_3.png",
      title: "Samantha",
      country: "Russia",
      price: 440,
    ),
    Plant(
      image: "assets/images/image_1.png",
      title: "Samantha",
      country: "Russia",
      price: 440,
    ),
  ];
  final List<String> listOfFeaturedPlants = [
    "assets/images/bottom_img_1.png",
    "assets/images/bottom_img_2.png",
    "assets/images/bottom_img_1.png",
  ];

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
            press: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Show More Clicked',
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
          ),
          ListOfRecomendPlants(size: size, listOfPlants: listOfPlants),
          TitleWithMoreBtn(
            title: 'Featured Plants',
            press: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Show More Clicked',
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
          ),
          FeaturedPlants(listOfFeaturedPlants: listOfFeaturedPlants),
          SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}
