import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/pages/detail/components/body.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class DetailPage extends StatelessWidget {
  // const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Body(),
    );
  }
}
