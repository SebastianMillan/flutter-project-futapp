import 'package:flutter/material.dart';
import 'package:futapp/models/league_list_response/item.dart';
import 'package:futapp/widgets/league_list_widget.dart';

class LeaguePage extends StatefulWidget {
  const LeaguePage({super.key});

  @override
  State<LeaguePage> createState() => _LeaguePageState();
}

class _LeaguePageState extends State<LeaguePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: LeagueListWidget(),
    );
  }
}
