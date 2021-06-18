import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/models/plant_model.dart';
import 'package:plant_app_flutter_ui/pages/detail/components/image_and_icons.dart';
import 'package:plant_app_flutter_ui/pages/detail/components/title_and_price.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class Body extends StatelessWidget {
  const Body({required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: plant.title,
            country: plant.country,
            price: plant.price,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: size.height * 0.1,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'You Buy a ${plant.title}',
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
                  child: Text(
                    "Buy Now",
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black87,
                    textStyle: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Description Clicked',
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
                  child: Text("Description"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
