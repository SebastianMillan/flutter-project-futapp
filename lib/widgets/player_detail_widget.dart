import 'package:flutter/material.dart';
import 'package:futapp/models/player_list_response/player_list_response.dart';
import 'package:widget_zoom/widget_zoom.dart';

class PlayerDetailWidget extends StatelessWidget {
  final Player player;

  const PlayerDetailWidget({Key? key, required this.player}) : super(key: key);

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
                    width: 110,
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
                      'Position: ${player.position!}',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text(
                          'Overall Rating:',
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
                    Text(
                      'Height: ${player.height!} cm',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Weight: ${player.weight!} kg',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Age: ${player.age!}',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Attributes:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 16.0,
                      runSpacing: 8.0,
                      children: [
                        _buildAttribute('Pace', player.pace!),
                        _buildAttribute('Shooting', player.shooting!),
                        _buildAttribute('Passing', player.passing!),
                        _buildAttribute('Dribbling', player.dribbling!),
                        _buildAttribute('Defending', player.defending!),
                        _buildAttribute('Physicality', player.physicality!),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAttribute(String label, int value) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        const SizedBox(height: 4),
        Text(
          '$value',
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    );
  }
}
