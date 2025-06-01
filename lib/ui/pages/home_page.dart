// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_plane/shared/theme.dart';
import 'package:flutter_plane/ui/widgets/destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/image_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Like Ciliwung',
                imageUrl: 'assets/images/image_destination1.png',
                city: 'Tangerang, Banten',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'White Houses',
                imageUrl: 'assets/images/image_destination2.png',
                city: 'Spain',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Hill Heyo',
                imageUrl: 'assets/images/image_destination3.png',
                city: 'Monaco',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'Menarra',
                imageUrl: 'assets/images/image_destination4.png',
                city: 'Japan',
                rating: 5.0,
              ),
              DestinationCard(
                name: 'Payung Teduh',
                imageUrl: 'assets/images/image_destination5.png',
                city: 'Singapore',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
      ],
    );
  }
}
