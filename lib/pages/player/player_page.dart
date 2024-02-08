import 'package:flutter/material.dart';
import 'package:futapp/blocs/player/player_bloc.dart';
import 'package:futapp/models/player_list_response/player_list_response.dart';
import 'package:futapp/repositories/player/player_repository.dart';
import 'package:futapp/repositories/player/player_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futapp/widgets/fut_cards.dart';

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
            return SizedBox(
              height: 500,
              width: double.infinity,
              child: PlayersCard(
                  idPlayer: state.players[index].id!,
                  name: state.players[index].name!,
                  position: state.players[index].position!),
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

/*
ListTile(
              title: Text(state.players[index].name!),
              subtitle: Text(state.players[index].position!),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://futdb.app/api/players/${state.players[index].id!}/image',
                    headers: {
                      'X-AUTH-TOKEN': 'f0aef560-81d4-4981-b204-40bf394fd41b'
                    }),
              ),
            )
 */