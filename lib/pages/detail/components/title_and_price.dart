import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    required this.title,
    required this.country,
    required this.price,
  });

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding,
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "$country",
                  style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: primaryColor),
          ),
        ],
      ),
    );
  }
}
