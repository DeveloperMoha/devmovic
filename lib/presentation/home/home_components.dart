import 'package:devmovic/core/utils/color_manager.dart';
import 'package:devmovic/core/utils/routes_manager.dart';
import 'package:devmovic/core/utils/string_manager.dart';
import 'package:devmovic/presentation/anime/anime_screen.dart';
import 'package:devmovic/presentation/home/home_model.dart';
import 'package:devmovic/presentation/movies/movies_screen.dart';
import 'package:devmovic/presentation/series/serie_screen.dart';
import 'package:flutter/material.dart';

import '../../core/utils/fonts_manager.dart';

class HomeComponents {
  Widget buildHomeContent(context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 0, left: 20),
            child: const Text(
              StringManager.homeTitle,
              style: TextStyle(
                fontFamily: FontManager.titilliumWebBold,
                fontSize: 35,
                color: ColorManager.mainDarkColor,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //   builder: (BuildContext context) => const MoviesScreen(),
                  // ));
                  Navigator.pushNamed(context, Routes.movieRoute);
                },
                child: Container(
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(homeCardList[0].imageName),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.7],
                        colors: [
                          Color(0x25d3352a),
                          Color(0x10000000),
                        ],
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(top: 200),
                      decoration: const BoxDecoration(
                          color: Color(0xCCffffff),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Text(
                        homeCardList[0].cardTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: FontManager.keniaRegular,
                          fontSize: 35,
                          color: ColorManager.mainDarkColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //   builder: (BuildContext context) => const SeriesScreen(),
                  // ));
                  Navigator.pushNamed(context, Routes.serieRoute);
                },
                child: Container(
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(homeCardList[1].imageName),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.7],
                        colors: [
                          Color(0x25d3352a),
                          Color(0x10000000),
                        ],
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(top: 200),
                      decoration: const BoxDecoration(
                          color: Color(0xCCffffff),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Text(
                        homeCardList[1].cardTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: FontManager.keniaRegular,
                          fontSize: 35,
                          color: ColorManager.mainDarkColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //   builder: (BuildContext context) => const AnimeScreen(),
                  // ));
                  Navigator.pushNamed(context, Routes.animeRoute);
                },
                child: Container(
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(homeCardList[2].imageName),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.7],
                        colors: [
                          Color(0x25d3352a),
                          Color(0x10000000),
                        ],
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(top: 200),
                      decoration: const BoxDecoration(
                          color: Color(0xCCffffff),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Text(
                        homeCardList[2].cardTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: FontManager.keniaRegular,
                          fontSize: 35,
                          color: ColorManager.mainDarkColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(homeCardList[3].imageName),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.7],
                        colors: [
                          Color(0x25d3352a),
                          Color(0x10000000),
                        ],
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(top: 200),
                      decoration: const BoxDecoration(
                          color: Color(0xCCffffff),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Text(
                        homeCardList[3].cardTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: FontManager.keniaRegular,
                          fontSize: 30,
                          color: ColorManager.mainDarkColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(homeCardList[4].imageName),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.7],
                        colors: [
                          Color(0x25d3352a),
                          Color(0x10000000),
                        ],
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(top: 200),
                      decoration: const BoxDecoration(
                          color: Color(0xCCffffff),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Text(
                        homeCardList[4].cardTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: FontManager.keniaRegular,
                          fontSize: 30,
                          color: ColorManager.mainDarkColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(homeCardList[5].imageName),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.7],
                        colors: [
                          Color(0x25d3352a),
                          Color(0x10000000),
                        ],
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50.0,
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(top: 200),
                      decoration: const BoxDecoration(
                          color: Color(0xCCffffff),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Text(
                        homeCardList[5].cardTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: FontManager.keniaRegular,
                          fontSize: 30,
                          color: ColorManager.mainDarkColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
