import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
    required this.listOfFeaturedPlants,
  }) : super(key: key);

  final List<String> listOfFeaturedPlants;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listOfFeaturedPlants.length,
        itemBuilder: (context, index) => FeaturePlantCard(
          image: listOfFeaturedPlants[index],
          press: () {},
        ),
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press,
      child: Container(
        width: size.width * 0.8,
        height: 185,
        margin: EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding / 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
