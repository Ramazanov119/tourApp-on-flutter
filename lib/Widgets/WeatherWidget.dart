import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ongid_2/Pages/WeatherPage.dart';

import '../models/WeatherData.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

var client = WeatherData();
var data;

info() async {
  // var position = await GetPosition();
  data = await client.getData('43.25', '76.95');
  return data;
}

class _WeatherWidgetState extends State<WeatherWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WeatherPage())),
        child: Card(
          elevation: 0.4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                  height: 50,
                  child: Lottie.network(
                      'https://assets9.lottiefiles.com/temp/lf20_dgjK9i.json'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aýa raıy",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "boljamy",
                      style: Theme.of(context).textTheme.labelLarge,
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
