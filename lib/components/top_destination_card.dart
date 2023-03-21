import 'package:flutter/material.dart';

import '../utils/styles.dart';

class TopDestinationCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String city;
  const TopDestinationCard({Key? key, required this.imagePath, required this.name, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 180,
      height: 80,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(medium),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagePath))),
          ),
          SizedBox(width: small),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name, style: heading4),
                const SizedBox(height: 5),
                Text(city, style: p2)
              ],
            ),
          )
        ],
      ),
    );
  }
}
