import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ongid_2/models/map.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //ToDo: Карта қосу керек.
      onTap: () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SimpleMapScreen())),
      child: Card(
        elevation: 0.4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 50,
                child: Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_v3WrCt.json'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Location",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  Text(
                    "Almaty, Kazakhstan",
                    style: Theme.of(context).textTheme.labelLarge,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
