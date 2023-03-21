import 'package:flutter/material.dart';
import 'package:travel_app/components/destination_card.dart';
import 'package:travel_app/utils/styles.dart';

class DestinationListView extends StatelessWidget {
  const DestinationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          DestinationCard(
            imagePath: 'assets/images/square-1.png',
            name: 'Japan Temple',
            location: 'Osaka Street, Japan',
            price: '￥120',
          ),
          DestinationCard(
            imagePath: 'assets/images/square-2.png',
            name: 'Gapura Merah',
            location: 'Tokyo Street, Japan',
            price: '￥80',
          ),
          DestinationCard(
            imagePath: 'assets/images/square-3.png',
            name: 'Tempio',
            location: 'Tokyo Street, Japan',
            price: '￥120',
          ),
        ],
      ),
    );
  }
}
