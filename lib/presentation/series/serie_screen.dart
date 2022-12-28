import 'package:devmovic/core/utils/images_manager.dart';
import 'package:devmovic/domain/entities/series_entity.dart';
import 'package:devmovic/presentation/series/serie_cubit.dart';
import 'package:devmovic/presentation/series/serie_details.dart';
import 'package:devmovic/presentation/series/serie_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/constants_manager.dart';
import '../../core/utils/fonts_manager.dart';

class SeriesScreen extends StatefulWidget {
  const SeriesScreen({super.key});

  @override
  State<SeriesScreen> createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen> {
  List<Series> topRatedSeriesList = [];
  List<Series> popularSeriesList = [];
  List<Series> onAirSeriesList = [];
  List<Series> airingTodaySeriesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider<SeriesCubit>(
          create: (context) {
            return SeriesCubit(IntialSeriesState());
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
                    " Series ...",
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
                          " Top Rated Series ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: FontManager.dosisBold,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      BlocBuilder<SeriesCubit, SeriesStates>(
                          builder: ((context, state) {
                        if (state is LoadingSeries) {
                          return Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: const CircularProgressIndicator(
                                  color: Colors.black),
                            ),
                          );
                        } else if (state is LoadedSeries) {
                          topRatedSeriesList =
                              BlocProvider.of<SeriesCubit>(context)
                                  .topRatedSeries;
                          return Container(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: topRatedSeriesList.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () => Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SerieDetailsScreen(
                                            imagePath: topRatedSeriesList[index]
                                                .imagePath,
                                            firstAirDate:
                                                topRatedSeriesList[index]
                                                    .firstAirDate,
                                            genreId: topRatedSeriesList[index]
                                                .genreId,
                                            serieName: topRatedSeriesList[index]
                                                .serieName,
                                            serieOverview:
                                                topRatedSeriesList[index]
                                                    .serieOverview,
                                            voteCount: topRatedSeriesList[index]
                                                .voteCount),
                                  )),
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
                                                      AppConstants.getMovDbImage(
                                                          topRatedSeriesList[
                                                                  index]
                                                              .seriePosterPath)),
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
                        } else if (state is ErrorLoadedSeries) {
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

                /**
                 * 
                 * * */
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: const Text(
                          " Popular Series ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: FontManager.dosisBold,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      BlocBuilder<SeriesCubit, SeriesStates>(
                          builder: ((context, state) {
                        if (state is LoadingSeries) {
                          return Center(
                            child: Container(
                              width: 100,
                              height: 100,
                              child: const CircularProgressIndicator(
                                  color: Colors.black),
                            ),
                          );
                        } else if (state is LoadedSeries) {
                          popularSeriesList =
                              BlocProvider.of<SeriesCubit>(context)
                                  .popularSeries;
                          return Container(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: popularSeriesList.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () => Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SerieDetailsScreen(
                                            imagePath:
                                                popularSeriesList[index]
                                                    .imagePath,
                                            firstAirDate:
                                                popularSeriesList[index]
                                                    .firstAirDate,
                                            genreId:
                                                popularSeriesList[index]
                                                    .genreId,
                                            serieName: popularSeriesList[index]
                                                .serieName,
                                            serieOverview:
                                                popularSeriesList[index]
                                                    .serieOverview,
                                            voteCount: popularSeriesList[index]
                                                .voteCount),
                                  )),
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
                                                      AppConstants.getMovDbImage(
                                                          popularSeriesList[
                                                                  index]
                                                              .seriePosterPath)),
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
                        } else if (state is ErrorLoadedSeries) {
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
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
