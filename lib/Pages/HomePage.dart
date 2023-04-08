import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ongid_2/Pages/ToursPage.dart';
import 'package:ongid_2/Widgets/AdvertisementWidget.dart';
import 'package:ongid_2/Widgets/LocationWidget.dart';
import 'package:ongid_2/Widgets/ProfileWidget.dart';
import 'package:ongid_2/Widgets/WeatherWidget.dart';
import 'WeatherPage.dart';
import 'package:ongid_2/Widgets/PlacesWidget.dart';
import 'package:ongid_2/Widgets/ToursWidget.dart';
import 'package:ongid_2/Widgets/HotelCarousel.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const WeatherWidget(),
                const LocationWidget(),
                const ProfileWidget(),
              ],
            ),
            Text(
              "Jarnama",
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            AdvertisementWidget(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Úzdik qonaq úıler",
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
            ),
            // PlacesWidget(),
            HotelCarousel(),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Týrlar",
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            const ToursWidget(),
          ],
        ),
      )),
    );
  }
}
