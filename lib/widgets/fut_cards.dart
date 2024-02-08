import 'package:flutter/material.dart';

class PlayersCard extends StatelessWidget {
  final int idPlayer;
  final String name;
  final String position;

  const PlayersCard({
    super.key,
    required this.idPlayer,
    required this.name,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage('https://futdb.app/api/players/${idPlayer}/image',
              headers: {
                'X-AUTH-TOKEN': 'f0aef560-81d4-4981-b204-40bf394fd41b'
              }),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  position,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
