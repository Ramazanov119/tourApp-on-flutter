import 'package:flutter/material.dart';
import 'package:ongid_2/Pages/ProfilePage.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => ProfilePage())),
      child: CircleAvatar(
          radius: 25, backgroundImage: AssetImage('assets/images/1.jpg')),
    );
  }
}
