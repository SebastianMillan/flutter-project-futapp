import 'package:flutter/material.dart';
import 'package:futapp/pages/player/player_detail_page.dart';

class PlayersCard extends StatelessWidget {
  final int id;
  final String name;
  final String position;
  final int rate;

  const PlayersCard({
    Key? key,
    required this.id,
    required this.name,
    required this.position,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlayerDetailPage(idPlayer: id)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Image.network(
              'https://pbs.twimg.com/media/F1z8RggWYAAx0a7.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned.fill(
              child: Center(
                child: Image.network(
                  'https://futdb.app/api/players/$id/image',
                  headers: const {
                    'X-AUTH-TOKEN': 'f0aef560-81d4-4981-b204-40bf394fd41b'
                  },
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 25,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  '$rate',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 28,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  position,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 214, 214, 214),
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, bottom: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
