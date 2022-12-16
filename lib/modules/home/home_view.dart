import 'package:devmovic/core/utils/color_manager.dart';
import 'package:devmovic/core/utils/images_manager.dart';
import 'package:devmovic/modules/home/home_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          leading: null,
          elevation: 0,
          title: Container(
            width: 130,
            height: 90,
            margin: const EdgeInsets.only(left: 60),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageManager.splashlogo), fit: BoxFit.fill),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent),
      // backgroundColor: Color.fromARGB(255, 56, 46, 17),
      body: Container(
        margin: const EdgeInsets.only(top: 0),
        padding: EdgeInsets.only(top: 50),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            stops: [0.1, 0.9],
            colors: [
              Color.fromARGB(65, 157, 255, 60),
              Color.fromARGB(100, 218, 10, 156),
            ],
          ),
        ),
        child: HomeComponents().buildHomeContent(),
      ),
    );
  }
}
