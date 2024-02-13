import 'package:flutter/material.dart';

class PlayerDetailWidget extends StatelessWidget {
  final String name;

  const PlayerDetailWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(name),
    );
  }
}
