import 'package:devmovic/core/utils/constants_manager.dart';
import 'package:devmovic/core/utils/fonts_manager.dart';
import 'package:devmovic/core/utils/images_manager.dart';
import 'package:devmovic/domain/entities/movies_entity.dart';
import 'package:devmovic/presentation/movies/movie_details.dart';
import 'package:devmovic/presentation/movies/movies_cubit.dart';
import 'package:devmovic/presentation/movies/movies_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  List<Movies> topRatedList = [];
  List<Movies> popularList = [];
  List<Movies> nowPlayingList = [];
  List<Movies> upComingList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<MoviesCubit>(
        create: (context) {
          return MoviesCubit(IntialMoviesState());
        },
        child:
            BlocBuilder<MoviesCubit, MoviesStates>(builder: ((context, state) {
          if (state is LoadingMovies) {
            return Center(
              child: Container(
                width: 100,
                height: 100,
                child: const CircularProgressIndicator(color: Colors.black),
              ),
            );
          } else if (state is LoadedMovies) {
            topRatedList =
                BlocProvider.of<MoviesCubit>(context).topRatedMoviesList;
            popularList =
                BlocProvider.of<MoviesCubit>(context).popularMoviesList;

            nowPlayingList =
                BlocProvider.of<MoviesCubit>(context).nowPlayingMoviesList;
            upComingList =
                BlocProvider.of<MoviesCubit>(context).upComingMoviesList;
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: const EdgeInsets.only(top: 0),
                padding: const EdgeInsets.only(top: 30, left: 10),
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
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "Movies ...",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: FontManager.dosisBold,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       BlocProvider.of<MoviesCubit>(context)
                    //           .getpopularMovies();
                    //     },
                    //     child: Text("Refresh")),
                    Container(
                        padding: const EdgeInsets.all(10),
                        color: Color(0x33ffffff),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Popular Movies",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontFamily: FontManager.dosisBold,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 180,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: popularList.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () => Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MovieDetailsScreen(
                                                    adult: popularList[index]
                                                        .adult,
                                                    imagePath:
                                                        popularList[index]
                                                            .imagePath,
                                                    movieName:
                                                        popularList[index]
                                                            .movieName,
                                                    voteCount:
                                                        popularList[index]
                                                            .voteCount,
                                                    movieOverView:
                                                        popularList[index]
                                                            .movieOverview,
                                                    genderIds:
                                                        popularList[index]
                                                            .genreId))),
                                    child: AspectRatio(
                                      aspectRatio: 2.4 / 3,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
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
                                                            popularList[index]
                                                                .moviePosterPath)),
                                                    fit: BoxFit.cover,
                                                  )),
                                              child: const Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      backgroundColor:
                                                          Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )),

                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        color: Color(0x33ffffff),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "topRated Movies",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontFamily: FontManager.dosisBold,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 180,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: topRatedList.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () => Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MovieDetailsScreen(
                                                    adult:
                                                        topRatedList[index]
                                                            .adult,
                                                    imagePath: topRatedList[index]
                                                        .imagePath,
                                                    movieName:
                                                        topRatedList[index]
                                                            .movieName,
                                                    voteCount: topRatedList[index]
                                                        .voteCount,
                                                    movieOverView:
                                                        topRatedList[index]
                                                            .movieOverview,
                                                    genderIds:
                                                        topRatedList[index]
                                                            .genreId))),
                                    child: AspectRatio(
                                      aspectRatio: 2.4 / 3,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
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
                                                            topRatedList[index]
                                                                .moviePosterPath)),
                                                    fit: BoxFit.cover,
                                                  )),
                                              child: const Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      backgroundColor:
                                                          Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        color: Color(0x33ffffff),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text("Upcoming Movies",
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.white,
                                      fontFamily: FontManager.dosisBold,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              height: 180,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: upComingList.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () => Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MovieDetailsScreen(
                                                    adult:
                                                        upComingList[index]
                                                            .adult,
                                                    imagePath: upComingList[index]
                                                        .imagePath,
                                                    movieName:
                                                        upComingList[index]
                                                            .movieName,
                                                    voteCount: upComingList[index]
                                                        .voteCount,
                                                    movieOverView:
                                                        upComingList[index]
                                                            .movieOverview,
                                                    genderIds:
                                                        upComingList[index]
                                                            .genreId))),
                                    child: AspectRatio(
                                      aspectRatio: 2.4 / 3,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
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
                                                            upComingList[index]
                                                                .moviePosterPath)),
                                                    fit: BoxFit.cover,
                                                  )),
                                              child: const Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      backgroundColor:
                                                          Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        color: Color(0x33ffffff),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Now Playing Movies",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontFamily: FontManager.dosisBold,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 180,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: nowPlayingList.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () => Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                MovieDetailsScreen(
                                                    adult: nowPlayingList[index]
                                                        .adult,
                                                    imagePath:
                                                        nowPlayingList[index]
                                                            .imagePath,
                                                    movieName:
                                                        nowPlayingList[index]
                                                            .movieName,
                                                    voteCount:
                                                        nowPlayingList[index]
                                                            .voteCount,
                                                    movieOverView:
                                                        nowPlayingList[index]
                                                            .movieOverview,
                                                    genderIds:
                                                        nowPlayingList[index]
                                                            .genreId))),
                                    child: AspectRatio(
                                      aspectRatio: 2.4 / 3,
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
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
                                                            nowPlayingList[
                                                                    index]
                                                                .moviePosterPath)),
                                                    fit: BoxFit.cover,
                                                  )),
                                              child: const Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      backgroundColor:
                                                          Colors.white),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            );
          } else if (state is ErrorLoadedMovies) {
            return Container(
              color: Colors.red,
              child: Text("Error here"),
            );
          }
          return Center(
            child: Container(
              color: Colors.deepOrange,
              child: Text("no data"),
            ),
          );
        })),
      ),
    );
  }
}
