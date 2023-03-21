import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: text,
            decoration: InputDecoration(
                hintText: 'Search Destination',
                hintStyle: p1,
                contentPadding:EdgeInsets.symmetric(vertical: small),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none
                  ),
                ),
                fillColor: white,
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  color: text,
                )),
          ),
        ),
        SizedBox(width: medium),
        Container(
            decoration: BoxDecoration(
                color: accent, borderRadius: BorderRadius.circular(15)),
            width: 50,
            height: 50,
            child: Icon(
              Icons.settings_backup_restore,
              color: white,
            ))
      ],
    );
  }
}
