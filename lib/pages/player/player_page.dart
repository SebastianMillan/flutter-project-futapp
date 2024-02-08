import 'package:flutter/material.dart';
import 'package:futapp/blocs/player/player_bloc.dart';
import 'package:futapp/repositories/player/player_repository.dart';
import 'package:futapp/repositories/player/player_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  late PlayerRepository playerRepository;

  @override
  void initState() {
    super.initState();
    playerRepository = PlayerRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PlayerBloc(playerRepository)..add(PlayerFetchPopular('players')),
      child: Scaffold(
        body: _playerList(),
      ),
    );
  }
}

Widget _playerList() {
  return BlocBuilder<PlayerBloc, PlayerState>(
    builder: (context, state) {
      if (state is PlayerFetchSucess) {
        return ListView.builder(
          itemCount:
              state.players.length, // Corrección: 'length' en lugar de 'lenght'
          itemBuilder: (context, index) {
            return ListTile(
              textColor: Colors.white,
              title: Text(state.players[index].name!),
              subtitle: Text(state.players[index].position!),
              /*leading: CircleAvatar(
                /*backgroundImage: NetworkImage(state.players[index].id!),*/
              ),*/
            );
          },
        );
      } else if (state is PlayerFetchError) {
        return Center(child: Text(state.message));
      }
      return Center(child: CircularProgressIndicator());
    },
  );
}
