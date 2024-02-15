import 'package:flutter/material.dart';
import 'package:futapp/widgets/team_widget.dart';

class TeamDetailPage extends StatefulWidget {
  final int idTeam;
  const TeamDetailPage({super.key, required this.idTeam});

  @override
  State<TeamDetailPage> createState() => _TeamDetailPageState();
}

class _TeamDetailPageState extends State<TeamDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: TeamDetailWidget(idTeam: widget.idTeam),
    );
  }
}
