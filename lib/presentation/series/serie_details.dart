// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:devmovic/presentation/series/serie_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/utils/constants_manager.dart';

class SerieDetailsScreen extends StatelessWidget {
  final String imagePath;
  final String firstAirDate;
  final List<int> genreId;
  final List<String> originCountry;
  final int serieId;
  final String serieName;
  final String serieOverview;
  final String seriePosterPath;
  final int voteCount;

  const SerieDetailsScreen({
    Key? key,
    required this.imagePath,
    required this.firstAirDate,
    required this.genreId,
    required this.originCountry,
    required this.serieId,
    required this.serieName,
    required this.serieOverview,
    required this.seriePosterPath,
    required this.voteCount,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                    image: NetworkImage(AppConstants.getMovDbImage(imagePath)),
                    fit: BoxFit.cover,
                  )),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      //padding: const EdgeInsets.all(1),
                      margin: const EdgeInsets.only(top: 25, left: 15),
                      decoration: BoxDecoration(
                          color: Color(0x4dffffff),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: IconButton(
                          padding: const EdgeInsets.all(5),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SeriesScreen()));
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      color: Color(0x33ffffff),
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        movieName,
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: FontManager.dosisBold,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Vote Count : ${voteCount.toString()}",
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: FontManager.titilliumWebLight,
                  fontWeight: FontWeight.w700,
                  color: Colors.yellow,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movieOverView,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: FontManager.titilliumWebLight,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                adult ? "For Adult" : "Not For Adult",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: FontManager.titilliumWebLight,
                  fontWeight: FontWeight.w700,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "gendre ids are : ${genderIds[0]} ",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: FontManager.titilliumWebLight,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
