import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_plan/core/config/base_config.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login_page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseConfig.primaryColor,
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  height: BaseConfig.devideHeight(context) * 0.4,
                  width: BaseConfig.devideWidth(context) * 0.5,
                  child: SvgPicture.asset('assets/images/splash_logo.svg'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(
                backgroundColor: BaseConfig.secondaryColor,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Text(
                'Copyright@ Dandi Supriyadi \n2020',
                style: BaseConfig.textFont,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
