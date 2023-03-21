import 'package:flutter/material.dart';
import 'package:travel_app/components/destination_list.dart';
import 'package:travel_app/components/header.dart';
import 'package:travel_app/components/label_section.dart';
import 'package:travel_app/components/search_bar.dart';
import 'package:travel_app/components/top_destination_list.dart';
import 'package:travel_app/utils/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(medium),
          child: Column(
            children: [
              const Header(),
              SizedBox(height: medium),
              const SearchBar(),
              SizedBox(height: medium),
              LabelSection(label: 'Recommended', labelStyle: heading1),
              SizedBox(height: small),
              const DestinationListView(),
              SizedBox(height: medium),
              LabelSection(label: 'Top Destination', labelStyle: heading2),
              SizedBox(height: small),
              const TopDestinationList()
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: accent,
          unselectedItemColor: icon,
          elevation: 0,
          backgroundColor: white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: ''),
          ],
        ),
      ),
    );
  }
}
