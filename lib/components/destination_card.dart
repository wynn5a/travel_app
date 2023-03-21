import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class DestinationCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String location;
  final String price;

  const DestinationCard(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.location,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200,
      margin: EdgeInsets.only(right: medium),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(medium),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagePath),
          )),
      child: Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(medium),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(0, 0, 0, 0.5),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: small, bottom: medium, left: small, right: small),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: accentLight,
                    ),
                    child: Center(
                        child: Text(
                      price,
                      style: pPrice,
                    )),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: pBold,
                  ),
                  Text(
                    location,
                    style: pLocation,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
