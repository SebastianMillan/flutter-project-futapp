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
        backgroundColor: Colors.black,
        body: _playerList(),
      ),
    );
  }
}

Widget _playerList() {
  return BlocBuilder<PlayerBloc, PlayerState>(
    builder: (context, state) {
      if (state is PlayerFetchSucess) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisExtent: 320,
                crossAxisCount: 2,
              ),
              itemCount: state.players.length,
              itemBuilder: (context, index) {
                final player = state.players[index];
                return PlayersCard(
                    idPlayer: player.id!,
                    name: player.name!,
                    position: player.position!,
                    rate: player.ratingAverage!);
              },
            ),
          ),
        );
      } else if (state is PlayerFetchError) {
        return Center(child: Text(state.message));
      }
      return const Center(child: CircularProgressIndicator());
    },
  );
}
