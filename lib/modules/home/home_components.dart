import 'package:devmovic/core/utils/color_manager.dart';
import 'package:devmovic/modules/home/home_model.dart';
import 'package:flutter/material.dart';

import '../../core/utils/fonts_manager.dart';

class HomeComponents {
  Widget buildGridView() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      crossAxisCount: 2,
      children: buildHomeCard(),
    );
  }

  List<Widget> buildHomeCard() {
    return [
      SizedBox(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(homeCardList[0].imageName),
                fit: BoxFit.cover),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 200),
            color: ColorManager.whiteColor,
            child: Text(
              homeCardList[0].CardTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: FontManager.kenia_regular,
                  fontSize: 20,
                  color: ColorManager.whiteColor),
            ),
          ),
        ),
      ),
      SizedBox(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(homeCardList[1].imageName),
                fit: BoxFit.cover),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 200),
            color: ColorManager.whiteColor,
            child: Text(
              homeCardList[1].CardTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: FontManager.kenia_regular,
                  fontSize: 20,
                  color: ColorManager.whiteColor),
            ),
          ),
        ),
      ),
      SizedBox(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(homeCardList[2].imageName),
                fit: BoxFit.cover),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 200),
            color: ColorManager.whiteColor,
            child: Text(
              homeCardList[2].CardTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: FontManager.kenia_regular,
                  fontSize: 20,
                  color: ColorManager.whiteColor),
            ),
          ),
        ),
      ),
      SizedBox(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(homeCardList[3].imageName),
                fit: BoxFit.cover),
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 200),
            color: ColorManager.whiteColor,
            child: Text(
              homeCardList[3].CardTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: FontManager.kenia_regular,
                  fontSize: 20,
                  color: ColorManager.whiteColor),
            ),
          ),
        ),
      ),
    ];
  }

  Widget buildHomeContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 180,
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
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: [0.1, 0.9],
                    colors: [
                      Color.fromARGB(65, 60, 219, 255),
                      Color.fromARGB(100, 218, 10, 156),
                    ],
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(top: 200),
                  decoration: BoxDecoration(
                      color: ColorManager.offWhiteColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Text(
                    homeCardList[0].CardTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: FontManager.kenia_regular,
                      fontSize: 35,
                      color: ColorManager.mainDarkColor,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 180,
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
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: [0.1, 0.9],
                    colors: [
                      Color.fromARGB(65, 60, 219, 255),
                      Color.fromARGB(100, 218, 10, 156),
                    ],
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(top: 200),
                  decoration: BoxDecoration(
                      color: ColorManager.offWhiteColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Text(
                    homeCardList[1].CardTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: FontManager.kenia_regular,
                      fontSize: 35,
                      color: ColorManager.mainDarkColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 180,
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
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: [0.1, 0.9],
                    colors: [
                      Color.fromARGB(65, 60, 219, 255),
                      Color.fromARGB(100, 218, 10, 156),
                    ],
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(top: 200),
                  decoration: BoxDecoration(
                      color: ColorManager.offWhiteColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Text(
                    homeCardList[2].CardTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: FontManager.kenia_regular,
                      fontSize: 35,
                      color: ColorManager.mainDarkColor,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 180,
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
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    stops: [0.1, 0.9],
                    colors: [
                      Color.fromARGB(65, 60, 219, 255),
                      Color.fromARGB(100, 218, 10, 156),
                    ],
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 50.0,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(top: 200),
                  decoration: BoxDecoration(
                      color: ColorManager.offWhiteColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: Text(
                    homeCardList[3].CardTitle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: FontManager.kenia_regular,
                      fontSize: 35,
                      color: ColorManager.mainDarkColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
