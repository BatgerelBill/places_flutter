import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../models/place.dart';

class MapScreen extends StatefulWidget {
  // const MapScreen({Key? key}) : super(key: key);

  final PlaceLocation initialLocation;
  final bool isSelecting;

  MapScreen({
    this.initialLocation = const PlaceLocation(
      latitude: 37,
      longitude: -144,
      address: 'Hello',
    ),
    this.isSelecting = false,
  });

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Газрын зураг'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.initialLocation.latitude,
              widget.initialLocation.longitude),
          zoom: 16,
        ),
      ),
    );
  }
}
