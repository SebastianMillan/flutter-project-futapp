import 'package:flutter/material.dart';

class PlayerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 485,
      decoration: const BoxDecoration(
        image: DecorationImage(
          scale: 50,
          image: NetworkImage(
              'https://b.fssta.com/uploads/application/soccer/headshots/40670.vresize.350.350.medium.91.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.5),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                '97',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFe9cc74),
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'RW',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFe9cc74),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Image.network(
                                'https://selimdoyranli.com/cdn/fut-player-card/img/argentina.svg',
                                width: 20,
                                height: 25,
                              ),
                              const SizedBox(height: 8),
                              Image.network(
                                'https://selimdoyranli.com/cdn/fut-player-card/img/barcelona.svg',
                                width: 20,
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                'https://selimdoyranli.com/cdn/fut-player-card/img/messi.png',
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      const Text(
                        'MESSI',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFe9cc74),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              buildFeature('97', 'PAC'),
                              buildFeature('95', 'SHO'),
                              buildFeature('94', 'PAS'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              buildFeature('99', 'DRI'),
                              buildFeature('35', 'DEF'),
                              buildFeature('68', 'PHY'),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column buildFeature(String value, String title) {
    return Column(
      children: <Widget>[
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFe9cc74).withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
