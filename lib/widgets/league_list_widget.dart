import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:futapp/blocs/league/league_bloc.dart';
import 'package:futapp/models/league_list_response/item.dart';
import 'package:futapp/pages/team_page.dart';
import 'package:futapp/repositories/league_repository.dart';
import 'package:futapp/repositories/league_repository_impl.dart';

class LeagueListWidget extends StatefulWidget {
  const LeagueListWidget({super.key});

  @override
  State<LeagueListWidget> createState() => _LeagueListWidgetState();
}

class _LeagueListWidgetState extends State<LeagueListWidget> {
  late LeagueRepository leagueRepository;

  @override
  void initState() {
    super.initState();
    leagueRepository = LeagueRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LeagueBloc(leagueRepository)..add(LeagueListFetchEvent()),
      child: Center(child: _leagueList()),
    );
  }

  Widget _leagueList() {
    return BlocBuilder<LeagueBloc, LeagueState>(builder: (context, state) {
      if (state is LeagueListFetchSuccess) {
        return ListView.builder(
            itemCount: state.leagueList.length,
            itemBuilder: (context, index) {
              return _createCardLeague(state.leagueList[index]);
            });
      } else if (state is LeagueListFetchError) {
        return Text(state.errorMessage);
      } else {
        return const CircularProgressIndicator();
      }
    });
  }

  Widget _createCardLeague(League league) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TeamPage(
                    league: league,
                  )),
        );
      },
      child: Card(
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
                        'https://futdb.app/api/leagues/' +
                            league.id!.toString() +
                            '/image',
                        headers: {
                      'X-AUTH-TOKEN': '087122e6-2e9d-4b68-a6b7-6349032fc8ea'
                    })),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    league.name!,
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
      ),
    );
  }
}
