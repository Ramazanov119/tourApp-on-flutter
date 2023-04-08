import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AdvertisementWidget extends StatefulWidget {
  @override
  State<AdvertisementWidget> createState() => _AdvertisementWidgetState();
}

class _AdvertisementWidgetState extends State<AdvertisementWidget> {
  List advertisementList = [
    {"id": 1, "image_path": 'assets/images/advertisement/ad1.jpg'},
    {"id": 2, "image_path": 'assets/images/advertisement/ad2.jpg'},
    {"id": 3, "image_path": 'assets/images/advertisement/ad6.jpg'},
    {"id": 4, "image_path": 'assets/images/advertisement/ad4.jpg'},
    {"id": 5, "image_path": 'assets/images/advertisement/ad5.jpg'},
  ];

  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          InkWell(
            //ToDo: Need to do onPressed to url link
            child: CarouselSlider(
              items: advertisementList
                  .map((item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ))
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
          ),
        ])
      ],
    );
  }
}
