import 'package:flutter/material.dart';
import 'package:futapp/widgets/team_list_widget.dart';

class TeamPage extends StatefulWidget {
  final int idLeague;
  const TeamPage({super.key, required this.idLeague});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body: TeamListWidget(
        idLeague: widget.idLeague,
      ),
    );
  }
}
