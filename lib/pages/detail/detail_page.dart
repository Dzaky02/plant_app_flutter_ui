import 'package:flutter/material.dart';
import 'package:plant_app_flutter_ui/models/plant_model.dart';
import 'package:plant_app_flutter_ui/pages/detail/components/body.dart';
import 'package:plant_app_flutter_ui/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Body(
        plant: plant,
      ),
    );
  }
}
