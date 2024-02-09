import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futapp/blocs/team/team_bloc.dart';
import 'package:futapp/models/league_list_response/item.dart';
import 'package:futapp/models/team_list_response/item.dart';
import 'package:futapp/repositories/team_repository.dart';
import 'package:futapp/repositories/team_repository_impl.dart';

class TeamListWidget extends StatefulWidget {
  final League league;
  const TeamListWidget({super.key, required this.league});

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.league.name!,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: BlocProvider(
        create: (context) =>
            TeamBloc(teamRepository)..add(TeamListFetchEvent(50)),
        child: Center(child: _teamList()),
      ),
    );
  }

  Widget _teamList() {
    return BlocBuilder<TeamBloc, TeamState>(builder: (context, state) {
      if (state is TeamListFetchSuccess) {
        return ListView.builder(
          itemCount: state.teamList.length,
          itemBuilder: (context, index) {
            if (state.teamList[index].league == widget.league.id) {
              return _createCardTeam(state.teamList[index]);
            }
            return Container();
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
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              Image(
                  image: NetworkImage(
                      'https://futdb.app/api/clubs/' +
                          team.id!.toString() +
                          '/image',
                      headers: {
                    'X-AUTH-TOKEN': '087122e6-2e9d-4b68-a6b7-6349032fc8ea'
                  })),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  team.name!,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
