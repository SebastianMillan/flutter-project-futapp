import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futapp/blocs/team/team_bloc.dart';
import 'package:futapp/models/team_list_response/item.dart';
import 'package:futapp/repositories/team_repository.dart';
import 'package:futapp/repositories/team_repository_impl.dart';

class TeamListWidget extends StatefulWidget {
  final int idLeague;
  const TeamListWidget({super.key, required this.idLeague});

  @override
  State<TeamListWidget> createState() => _TeamListWidgetState();
}

class _TeamListWidgetState extends State<TeamListWidget> {
  late TeamRepository teamRepository;

  @override
  void initState() {
    super.initState();
    teamRepository = TeamRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeamBloc(teamRepository)..add(TeamListFetchEvent()),
      child: Center(child: _teamList()),
    );
  }

  Widget _teamList() {
    return BlocBuilder<TeamBloc, TeamState>(builder: (context, state) {
      if (state is TeamListFetchSuccess) {
        return ListView.builder(
          itemCount: state.teamList.length,
          itemBuilder: (context, index) {
            if (state.teamList[index].league == widget.idLeague) {
              return _createCardTeam(state.teamList[index]);
            }
          },
        );
      } else if (state is TeamListFetchError) {
        return Text(state.errorMessage);
      } else {
        return const CircularProgressIndicator();
      }
    });
  }

  Widget _createCardTeam(Team team) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: const Color.fromARGB(255, 24, 24, 24),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          team.name!,
          style: const TextStyle(
              fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
