import 'package:flutter/material.dart';
import 'package:travel_plan/core/config/base_config.dart';
import 'package:travel_plan/core/models/travel_place.dart';

class PopularDestinationCard extends StatelessWidget {
  TravelPlace place;

  PopularDestinationCard(this.place);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      height: 350,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  place.url,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${place.name}',
                      style: BaseConfig.textFont.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.place,
                          color: BaseConfig.primaryColor,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '${place.location}',
                          style: BaseConfig.textFont.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_balance_wallet,
                          color: BaseConfig.secondaryColor,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '\$ ${place.price}',
                          style: BaseConfig.textFont.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.bookmark_border),
              ],
            ),
          )
        ],
      ),
    );
  }
}
