import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futapp/blocs/bloc/player_detail_bloc.dart';
import 'package:futapp/blocs/player/player_bloc.dart';
import 'package:futapp/repositories/player/player_repository.dart';
import 'package:futapp/repositories/player/player_repository_impl.dart';
import 'package:futapp/widgets/player_detail_widget.dart';

class PlayerDetailPage extends StatefulWidget {
  final int idPlayer;

  const PlayerDetailPage({Key? key, required this.idPlayer}) : super(key: key);

  @override
  State<PlayerDetailPage> createState() => _PlayerDetailPageState();
}

class _PlayerDetailPageState extends State<PlayerDetailPage> {
  late PlayerRepository playerRepository;
  @override
  void initState() {
    super.initState();
    playerRepository = PlayerRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayerDetailBloc(playerRepository)
        ..add(PlayerDetailFetchEvent(widget.idPlayer)),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _playerDetail(),
      ),
    );
  }
}

Widget _playerDetail() {
  return BlocBuilder<PlayerDetailBloc, PlayerDetailState>(
    builder: (context, state) {
      if (state is PlayerDetailFetchSuccess) {
        final player = state.playerDetail;
        return PlayerDetailWidget(name: player.name!);
      } else if (state is PlayerFetchError) {
        return Center(child: Text('ERRORS'));
      }
      return const Center(child: CircularProgressIndicator());
    },
  );
}
