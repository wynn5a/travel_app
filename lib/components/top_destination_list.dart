import 'package:flutter/material.dart';
import 'package:travel_app/components/top_destination_card.dart';
import 'package:travel_app/models/top_destination.dart';

class TopDestinationList extends StatelessWidget {
  const TopDestinationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tops = [
      TopDestination('assets/images/square-3.png', 'Telaga', 'Bandung'),
      TopDestination('assets/images/square-2.png', 'Sungai', 'Ciliwung'),
    ];
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: tops.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var top = tops[index];
          return TopDestinationCard(
            imagePath: top.imagePath,
            name: top.name,
            city: top.city,
          );
        },
      ),
    );
  }
}
