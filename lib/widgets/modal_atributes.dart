// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:futapp/models/player_list_response/player_list_response.dart';
import 'package:widget_zoom/widget_zoom.dart';

class PlayerAttributesModal extends StatelessWidget {
  final Player player;

  const PlayerAttributesModal({Key? key, required this.player})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Player Attributes',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildAttribute('Pace', player.pace!),
                  _buildAttribute('Shooting', player.shooting!),
                  _buildAttribute('Passing', player.passing!),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildAttribute('Dribbling', player.dribbling!),
                  _buildAttribute('Defending', player.defending!),
                  _buildAttribute('Physicality', player.physicality!),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Team',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        width: 40,
                        child: WidgetZoom(
                          heroAnimationTag: 'tag',
                          zoomWidget: Image.network(
                            'https://futdb.app/api/clubs/${player.club}/image',
                            headers: const {
                              'X-AUTH-TOKEN':
                                  'f0aef560-81d4-4981-b204-40bf394fd41b'
                            },
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'League',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        width: 40,
                        child: WidgetZoom(
                          heroAnimationTag: 'tag',
                          zoomWidget: Image.network(
                            'https://futdb.app/api/leagues/${player.league}/image',
                            headers: const {
                              'X-AUTH-TOKEN':
                                  'f0aef560-81d4-4981-b204-40bf394fd41b'
                            },
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Nationality',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        width: 40,
                        child: WidgetZoom(
                          heroAnimationTag: 'tag',
                          zoomWidget: Image.network(
                            'https://futdb.app/api/nations/${player.nation}/image',
                            headers: const {
                              'X-AUTH-TOKEN':
                                  'f0aef560-81d4-4981-b204-40bf394fd41b'
                            },
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Skills',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                          width: 120,
                          child: RatingBar.builder(
                            initialRating: player.skillMoves!.toDouble(),
                            maxRating: player.skillMoves!.toDouble(),
                            minRating: player.skillMoves!.toDouble(),
                            direction: Axis.horizontal,
                            itemSize: 23,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 1,
                            ),
                            onRatingUpdate: (rating) {},
                          )),
                      SizedBox(height: 16),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Weak Foot',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                          width: 120,
                          child: RatingBar.builder(
                            initialRating: player.weakFoot!.toDouble(),
                            maxRating: player.weakFoot!.toDouble(),
                            minRating: player.weakFoot!.toDouble(),
                            direction: Axis.horizontal,
                            itemSize: 23,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 1,
                            ),
                            onRatingUpdate: (rating) {},
                          )),
                      SizedBox(height: 16),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAttribute(String label, int value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(height: 4),
        Text(
          '$value',
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
