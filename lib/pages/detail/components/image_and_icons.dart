import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_flutter_ui/pages/detail/components/icon_card.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class ImageAndIcons extends StatelessWidget {
  // const ImageAndIcons({
  // });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              IconButton(
                padding: EdgeInsets.only(
                  bottom: defaultPadding * 1.5,
                  top: defaultPadding * 2.5,
                  left: defaultPadding,
                  right: defaultPadding,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
              ),
              IconCard(iconUrl: "assets/icons/sun.svg"),
              IconCard(iconUrl: "assets/icons/icon_2.svg"),
              IconCard(iconUrl: "assets/icons/icon_3.svg"),
              IconCard(iconUrl: "assets/icons/icon_4.svg"),
            ],
          ),
        ),
        Container(
          height: size.height * 0.75,
          width: size.width * 0.70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(63),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: primaryColor.withOpacity(0.29),
              )
            ],
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/img.png"),
            ),
          ),
        ),
      ],
    );
  }
}
