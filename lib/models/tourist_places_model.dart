// ignore_for_file: public_member_api_docs, sort_constructors_first
class TouristPlacesModel {
  final int type;
  final String name;
  final String image;
  TouristPlacesModel({
    required this.type,
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(type: 1, name: "Jaǵajaı", image: "assets/icons/beach.png"),
  TouristPlacesModel(type: 2, name: "Orman", image: "assets/icons/forest.png"),
  TouristPlacesModel(type: 3, name: "Qala", image: "assets/icons/city.png"),
  TouristPlacesModel(type: 4, name: "Shól", image: "assets/icons/desert.png"),
  TouristPlacesModel(type: 5, name: "Gıbrıd", image: "assets/icons/desert.png"),
];
