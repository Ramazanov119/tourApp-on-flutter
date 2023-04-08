import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Pages/HomePage.dart';

class SimpleMapScreen extends StatefulWidget {
  const SimpleMapScreen({Key? key}) : super(key: key);

  @override
  _SimpleMapScreenState createState() => _SimpleMapScreenState();
}

class _SimpleMapScreenState extends State<SimpleMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition initialPosition = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.0);

  static const CameraPosition targetPosition = CameraPosition(
      target: LatLng(37.43296265331129, -122.08832357078792),
      zoom: 14.0,
      bearing: 192.0,
      tilt: 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Google Map"),
        elevation: 0.0,
        leading: IconButton(
            onPressed: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage())),
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Color.fromARGB(255, 71, 41, 159),
      ),
      body: GoogleMap(
        initialCameraPosition: initialPosition,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          goToLake();
        },
        label: const Text("To the lake!"),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> goToLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(targetPosition));
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'package:routes_app/bloc/map/map_bloc.dart';
// import 'package:routes_app/bloc/my_location/my_location_bloc.dart';
// import 'package:routes_app/widgets/widgets.dart';

// import '../bloc/map/map_bloc.dart';
// import '../bloc/my_location/my_location_bloc.dart';
// import '../widgets/widgets.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   void initState() {
//     context.read<MyLocationBloc>().startTracking();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     context.read<MyLocationBloc>().endTracking();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           BlocBuilder<MyLocationBloc, MyLocationState>(
//             builder: (_, MyLocationState state) => buildMap(state),
//           ),
//           Positioned(
//             top: 15,
//             child: SearchBar(),
//           ),
//           ManualMarker(),
//         ],
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           LocationBtn(),
//           FollowLocationBtn(),
//           MyRouteBtn(),
//         ],
//       ),
//     );
//   }

//   Widget buildMap(MyLocationState state) {
//     if (!state.haveLastLocation) return Center(child: Text('Locating...'));

//     final mapBloc = BlocProvider.of<MapBloc>(context);

//     mapBloc.add(OnLocationUpdated(state.location));

//     final initialPositon = CameraPosition(target: state.location, zoom: 15);

//     return BlocBuilder<MapBloc, MapState>(
//         builder: (BuildContext context, MapState state) {
//       return GoogleMap(
//         initialCameraPosition: initialPositon,
//         myLocationEnabled: true,
//         myLocationButtonEnabled: false,
//         zoomControlsEnabled: false,
//         onMapCreated: mapBloc.initMap,
//         polylines: mapBloc.state.polyLines.values.toSet(),
//         markers: mapBloc.state.markers.values.toSet(),
//         onCameraMove: (CameraPosition cameraPosition) =>
//             mapBloc.add(OnMapMoved(cameraPosition.target)),
//       );
//     });
//   }
// }