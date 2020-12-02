import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_plan/core/config/base_config.dart';

class PlacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: BaseConfig.devideHeight(context) * 0.4,
              width: BaseConfig.devideWidth(context) * 0.5,
              child: SvgPicture.asset('assets/images/error.svg'),
            ),
            Text(
              'Cooming Soon',
              style: BaseConfig.textFont,
            ),
          ],
        ),
      ),
    );
  }
}
