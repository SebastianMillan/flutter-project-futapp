import 'dart:async';

import 'package:flutter/material.dart';
import 'package:futapp/models/player_list_response/player_list_response.dart';
import 'package:futapp/widgets/modal_atributes.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_zoom/widget_zoom.dart';

class PlayerDetailWidget extends StatelessWidget {
  final Player player;

  PlayerDetailWidget({Key? key, required this.player}) : super(key: key);

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition cameraPosition = CameraPosition(
    target: LatLng(39.46973029966386, -0.37550090754877496),
    zoom: 15.9746,
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 180,
                    child: WidgetZoom(
                      heroAnimationTag: 'tag',
                      zoomWidget: Image.network(
                        'https://futdb.app/api/players/${player.id}/image',
                        headers: const {
                          'X-AUTH-TOKEN': 'f0aef560-81d4-4981-b204-40bf394fd41b'
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      player.name!,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      player.position!,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text(
                          'GRL',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${player.ratingAverage!}',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.height, color: Colors.white, size: 25),
                        Text(
                          '${player.height!} cm',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(width: 3),
                        const Icon(Icons.gpp_maybe,
                            color: Colors.white, size: 25),
                        Text(
                          '${player.weight!} kg',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Age: ${player.age!}',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  backgroundColor:
                                      const Color.fromARGB(255, 10, 10, 10),
                                  context: context,
                                  builder: (context) =>
                                      PlayerAttributesModal(player: player),
                                );
                              },
                              child: const Text(
                                'Show Attributes',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 200, // Set a specific height for the map
          child: GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: cameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ],
    );
  }
}
