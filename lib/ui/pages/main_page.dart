// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_plane/ui/widgets/custom_bottom_navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_home.png',
                isSelected: true, // Set this to true for the selected item
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_card.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Text('Main Page'),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
