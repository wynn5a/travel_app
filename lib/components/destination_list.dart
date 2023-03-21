import 'package:flutter/material.dart';
import 'package:travel_app/components/destination_card.dart';
import 'package:travel_app/models/destination.dart';
import 'package:travel_app/utils/styles.dart';

class DestinationListView extends StatelessWidget {
  const DestinationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('assets/images/square-1.png', 'Japan Temple',
          'Osaka Street, Japan', '￥120'),
      Destination('assets/images/square-2.png', 'Gapura Merah',
          'Tokyo Street, Japan', '￥110'),
      Destination('assets/images/square-3.png', 'Tempio', 'Osaka Street, Japan',
          '￥90'),
    ];
    return SizedBox(
      height: 250,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            var destination = destinations[index];
            return DestinationCard(
                imagePath: destination.imagePath,
                name: destination.name,
                location: destination.location,
                price: destination.price);
          }),
    );
  }
}
