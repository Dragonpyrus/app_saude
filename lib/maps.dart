import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({Key? key}) : super(key: key);

  @override
  State<OrderTrackingPage> createState() => OrderTrackingPageState();
}

class OrderTrackingPageState extends State<OrderTrackingPage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const LatLng sourceLocation = LatLng(-22.977726, -43.232090);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  static const LatLng miguel_couto = LatLng(-22.9779,  -43.2239);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hospitais Próximos",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: GoogleMap(initialCameraPosition: CameraPosition(target: sourceLocation, zoom: 14.5
      ),
      markers: {
        Marker(markerId: MarkerId('source'), position: sourceLocation),
        Marker(markerId: MarkerId("Hospital"), position: miguel_couto)
      },
      ),
      );
  }
}
