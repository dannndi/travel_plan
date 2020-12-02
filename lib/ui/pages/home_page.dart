import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:travel_plan/core/config/base_config.dart';
import 'package:travel_plan/core/providers/travel_place_provider.dart';
import 'package:travel_plan/ui/widgets/popular_destination_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var username;
  @override
  Widget build(BuildContext context) {
    username = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 40),
                child: Text(
                  'Hi, $username',
                  style: BaseConfig.textFont.copyWith(
                    color: Colors.grey[600],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Let\'s Enjoy \nYour Vacation !!',
                  style: BaseConfig.textFont.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search'),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: BaseConfig.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Wrap(
                  spacing: 30,
                  runSpacing: 10,
                  children: [
                    Container(
                      height: (BaseConfig.devideWidth(context) - 130) / 4,
                      width: (BaseConfig.devideWidth(context) - 130) / 4,
                      decoration: BoxDecoration(
                        color: BaseConfig.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.airplanemode_active,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: (BaseConfig.devideWidth(context) - 130) / 4,
                      width: (BaseConfig.devideWidth(context) - 130) / 4,
                      decoration: BoxDecoration(
                        color: BaseConfig.secondaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.account_balance,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: (BaseConfig.devideWidth(context) - 130) / 4,
                      width: (BaseConfig.devideWidth(context) - 130) / 4,
                      decoration: BoxDecoration(
                        color: BaseConfig.accentColor1,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: (BaseConfig.devideWidth(context) - 130) / 4,
                      width: (BaseConfig.devideWidth(context) - 130) / 4,
                      decoration: BoxDecoration(
                        color: BaseConfig.accentColor2,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pupolar Destination',
                      style: BaseConfig.textFont.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'View All',
                      style: BaseConfig.textFont.copyWith(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Consumer<TravelPlaceProv>(
                builder: (context, travelPlaveProv, _) {
                  if (travelPlaveProv.places == null) {
                    travelPlaveProv.getPlace();
                    return Container(
                      height: 300,
                      child: Center(
                        child: SpinKitCircle(
                          color: BaseConfig.secondaryColor,
                        ),
                      ),
                    );
                  }
                  return Container(
                    height: 350,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: travelPlaveProv.places.length,
                      itemBuilder: (context, index) {
                        return PopularDestinationCard(
                            travelPlaveProv.places[index]);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
