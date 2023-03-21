import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: text,
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/profile.png'),
                  )),
              width: 50,
              height: 50,
            ),
            SizedBox(width: small),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: p2,
                ),
                Text(
                  'Someone',
                  style: heading3,
                ),
              ],
            )
          ],
        ),
        Icon(Icons.notifications, color: icon,)
      ],
    );
  }
}
