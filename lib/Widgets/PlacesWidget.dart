import 'package:flutter/material.dart';
import 'package:ongid_2/models/tourist_places_model.dart';

class PlacesWidget extends StatelessWidget {
  const PlacesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //ToDo: Әр блокты басқанда соған сәйкес тур-ларды шығару керек.
      child: SizedBox(
        height: 65,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Chip(
              label: Text(touristPlaces[index].name),
              avatar: CircleAvatar(
                backgroundImage: AssetImage(touristPlaces[index].image),
              ),
              backgroundColor: Colors.white,
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            );
          },
          separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.only(right: 10)),
          itemCount: touristPlaces.length,
        ),
      ),
    );
  }
}
