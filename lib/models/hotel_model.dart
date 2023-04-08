class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/places/hotel0.jpg',
    name: 'Qonaq úı 1',
    address: 'Abay 707',
    price: 175000,
  ),
  Hotel(
    imageUrl: 'assets/images/places/hotel1.jpg',
    name: 'Qonaq úı 2',
    address: 'Abay 707',
    price: 300000,
  ),
  Hotel(
    imageUrl: 'assets/images/places/hotel2.jpg',
    name: 'Qonaq úı 3',
    address: 'Abay 707',
    price: 240000,
  ),
];
