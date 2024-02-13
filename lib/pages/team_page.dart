import 'package:flutter/material.dart';
import 'package:futapp/models/league_list_response/item.dart';
import 'package:futapp/widgets/team_list_widget.dart';

class TeamPage extends StatefulWidget {
  final League league;
  const TeamPage({super.key, required this.league});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return TeamListWidget(
      league: widget.league,
    );
  }
}
