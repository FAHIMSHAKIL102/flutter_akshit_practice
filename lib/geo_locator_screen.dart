import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorScreen extends StatefulWidget {
  const GeoLocatorScreen({super.key});

  @override
  State<GeoLocatorScreen> createState() => _GeoLocatorScreenState();
}

class _GeoLocatorScreenState extends State<GeoLocatorScreen> {
  Position? position;
  fetchposition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: 'Location Service is disabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Fluttertoast.showToast(msg: 'You denied the permission');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Fluttertoast.showToast(msg: ' You denied the permission forever');
    }
    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position = currentPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GeoLocatorScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              position == null ? 'Location' : position.toString(),
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                fetchposition();
              },
              child: Text('Get Location'),
            ),
          ],
        ),
      ),
    );
  }
}
