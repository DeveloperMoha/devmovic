import 'package:devmovic/domain/entities/anime_entity.dart';
import 'package:devmovic/presentation/anime/anime_cubit.dart';
import 'package:devmovic/presentation/anime/anime_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/constants_manager.dart';
import '../../core/utils/fonts_manager.dart';

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({super.key});

  @override
  State<AnimeScreen> createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {
  List<Anime> bestAnimeList = [];
  List<Anime> premierAnimeList = [];
  List<Anime> airingAnimeList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider<AnimeCubit>(
          create: (context) {
            return AnimeCubit(IntialAnimeState());
          },
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.2, 0.4, 0.7, 0.95],
                colors: [
                  Color.fromARGB(161, 70, 8, 163),
                  Color.fromARGB(179, 94, 25, 87),
                  Color.fromARGB(179, 1, 94, 80),
                  Color.fromARGB(153, 0, 99, 148),
                  Color.fromARGB(106, 108, 5, 145),
                ],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    " Anime ...",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: FontManager.dosisBold,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: const Text(
                          "Premier Anime ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: FontManager.dosisBold,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      BlocBuilder<AnimeCubit, AnimeStates>(
                          builder: ((context, state) {
                        if (state is LoadingAnime) {
                          return Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: const CircularProgressIndicator(
                                  color: Colors.black),
                            ),
                          );
                        } else if (state is LoadedAnime) {
                          premierAnimeList =
                              BlocProvider.of<AnimeCubit>(context).premierAnime;

                          return Container(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: premierAnimeList.length,
                              itemBuilder: (context, index) {
                                print("Link below : ========");
                                print(
                                    "Link below :${premierAnimeList[index].poster} ");
                                print(AppConstants.getAnimePoster(
                                    premierAnimeList[index].poster));
                                return InkWell(
                                  onTap: () {
                                    _showAlertDialog(
                                        premierAnimeList[index].title,
                                        premierAnimeList[index].year.toString(),
                                        AppConstants.getAnimePoster(
                                            premierAnimeList[index].poster));
                                  },
                                  child: AspectRatio(
                                    aspectRatio: 2.4 / 3,
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 180,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      AppConstants
                                                          .getAnimePoster(
                                                              premierAnimeList[
                                                                      index]
                                                                  .poster)),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        } else if (state is ErrorLoadedAnime) {
                          return Center(
                            child: Center(
                              child: Container(
                                width: 100,
                                height: 100,
                                child: const Text("Error In data api"),
                              ),
                            ),
                          );
                        }
                        return Center(
                          child: Container(
                            height: 100,
                            child: const Text(
                              "Data is Loading ...",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        );
                      })),
                    ],
                  ),
                ),

                /** */
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: const Text(
                          "Best Anime ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: FontManager.dosisBold,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      BlocBuilder<AnimeCubit, AnimeStates>(
                          builder: ((context, state) {
                        if (state is LoadingAnime) {
                          return Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: const CircularProgressIndicator(
                                  color: Colors.black),
                            ),
                          );
                        } else if (state is LoadedAnime) {
                          bestAnimeList =
                              BlocProvider.of<AnimeCubit>(context).bestAnime;

                          return Container(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: bestAnimeList.length,
                              itemBuilder: (context, index) {
                                print("Link below : ========");
                                print(AppConstants.getAnimePoster(
                                    bestAnimeList[index].poster));
                                return InkWell(
                                  onTap: () {
                                    _showAlertDialog(
                                        bestAnimeList[index].title,
                                        bestAnimeList[index].year.toString(),
                                        AppConstants.getAnimePoster(
                                            bestAnimeList[index].poster));
                                  },
                                  child: AspectRatio(
                                    aspectRatio: 2.4 / 3,
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 180,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      AppConstants
                                                          .getAnimePoster(
                                                              bestAnimeList[
                                                                      index]
                                                                  .poster)),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        } else if (state is ErrorLoadedAnime) {
                          return Center(
                            child: Center(
                              child: Container(
                                width: 100,
                                height: 100,
                                child: const Text("Error In data api"),
                              ),
                            ),
                          );
                        }
                        return Center(
                          child: Container(
                            height: 100,
                            child: const Text(
                              "Data is Loading ...",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        );
                      })),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: const Text(
                          "Airing Anime ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: FontManager.dosisBold,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      BlocBuilder<AnimeCubit, AnimeStates>(
                          builder: ((context, state) {
                        if (state is LoadingAnime) {
                          return Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: const CircularProgressIndicator(
                                  color: Colors.black),
                            ),
                          );
                        } else if (state is LoadedAnime) {
                          airingAnimeList =
                              BlocProvider.of<AnimeCubit>(context).airingAnime;

                          return Container(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: airingAnimeList.length,
                              itemBuilder: (context, index) {
                                print("Link below : ========");
                                print(AppConstants.getAnimePoster(
                                    airingAnimeList[index].poster));
                                return InkWell(
                                  onTap: () {
                                    _showAlertDialog(
                                        airingAnimeList[index].title,
                                        airingAnimeList[index].year.toString(),
                                        AppConstants.getAnimePoster(
                                            airingAnimeList[index].poster));
                                  },
                                  child: AspectRatio(
                                    aspectRatio: 2.4 / 3,
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      height: 180,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 180,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      AppConstants
                                                          .getAnimePoster(
                                                              airingAnimeList[
                                                                      index]
                                                                  .poster)),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        } else if (state is ErrorLoadedAnime) {
                          return Center(
                            child: Center(
                              child: Container(
                                width: 100,
                                height: 100,
                                child: const Text("Error In data api"),
                              ),
                            ),
                          );
                        }
                        return Center(
                          child: Container(
                            height: 100,
                            child: const Text(
                              "Data is Loading ...",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        );
                      })),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showAlertDialog(name, year, image) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Anime Details'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Image(
                  image: NetworkImage(image),
                  width: 400,
                  height: 250,
                ),
                Text(
                  "\n $name \n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  "year : $year",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.grey[300],

          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
