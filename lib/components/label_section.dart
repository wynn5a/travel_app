import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class LabelSection extends StatelessWidget {
  final String label;
  final TextStyle labelStyle;

  const LabelSection({Key? key, required this.label, required this.labelStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: labelStyle),
        Icon(
          Icons.more_horiz,
          color: icon,
          size: 28,
        )
      ],
    );
  }
}
