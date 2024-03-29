import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futapp/blocs/team_detail/team_detail_bloc.dart';
import 'package:futapp/repositories/team_repository.dart';
import 'package:futapp/repositories/team_repository_impl.dart';

class TeamDetailWidget extends StatefulWidget {
  final int idTeam;
  const TeamDetailWidget({super.key, required this.idTeam});

  @override
  State<TeamDetailWidget> createState() => _TeamDetailWidgetState();
}

class _TeamDetailWidgetState extends State<TeamDetailWidget> {
  late TeamRepository teamRepository;

  @override
  void initState() {
    super.initState();
    teamRepository = TeamRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TeamDetailBloc(teamRepository)
          ..add(TeamDetailFetchEvent(widget.idTeam)),
        child: Center(child: _teamDetail()));
  }

  Widget _teamDetail() {
    return BlocBuilder<TeamDetailBloc, TeamDetailState>(
        builder: (context, state) {
      if (state is TeamDetailFetchSucess) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    'https://futdb.app/api/clubs/' +
                        state.detailTeam.id!.toString() +
                        '/image',
                    headers: {
                      'X-AUTH-TOKEN': '087122e6-2e9d-4b68-a6b7-6349032fc8ea'
                    }),
              ),
              Text(
                state.detailTeam.name!,
                style: const TextStyle(color: Colors.white, fontSize: 60),
              )
            ],
          ),
        );
      } else if (state is TeamDetailFetchError) {
        return Text(state.errorMessage);
      } else {
        return const CircularProgressIndicator();
      }
    });
  }
}
