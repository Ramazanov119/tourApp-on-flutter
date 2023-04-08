import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'HomePage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 550,
            height: 550,
            child: Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_1ezvulr6.json'),
          ),
          Text(
            "Almaty Tour",
            style: TextStyle(
                fontSize: 38, color: Colors.blue[400], fontFamily: 'Ubuntu'),
          ),
          Text(
            "Saıahatyńyzdy tek bizben birge zertteńiz",
            style: TextStyle(
                fontSize: 20, color: Colors.blue[400], fontFamily: 'Ubuntu'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              child: ElevatedButton(
                child: Text("Basty betke oty"),
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
              ),
            ),
            // TextButton.icon(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/homePage');
            //   },
            //   label: Text(
            //     "Basty betke ótý",
            //     style: TextStyle(fontFamily: 'Ubuntu'),
            //   ),
            //   icon: Icon(Icons.navigate_next_rounded),
            // )
          )
        ],
      )),
    );
  }
}
