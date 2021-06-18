import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/models/plant_model.dart';
import 'package:plant_app_flutter_ui/pages/detail/detail_page.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class ListOfRecomendPlants extends StatelessWidget {
  const ListOfRecomendPlants({
    required this.size,
    required this.listOfPlants,
  });

  final Size size;
  final List<Plant> listOfPlants;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.41,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(
            left: defaultPadding,
            top: defaultPadding / 2,
          ),
          itemCount: listOfPlants.length,
          itemBuilder: (context, index) {
            return RecomendedPlantCard(
              plant: listOfPlants[index],
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      plant: listOfPlants[index],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}

class RecomendedPlantCard extends StatelessWidget {
  const RecomendedPlantCard({
    required this.plant,
    required this.press,
  });

  final Plant plant;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // Cover 40% of screen width
      width: size.width * 0.38,
      margin: EdgeInsets.only(
        right: defaultPadding,
      ),
      child: InkWell(
        onTap: press,
        child: Column(
          children: [
            Image.asset(plant.image),
            Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${plant.title}\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "${plant.country}".toUpperCase(),
                          style: TextStyle(
                            color: primaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$${plant.price}',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: primaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
