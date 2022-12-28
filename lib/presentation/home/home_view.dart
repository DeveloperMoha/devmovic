import 'package:devmovic/core/utils/color_manager.dart';
import 'package:devmovic/core/utils/images_manager.dart';
import 'package:devmovic/presentation/home/home_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      //backgroundColor: Color.fromARGB(255, 56, 46, 17),
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: const Color(0x66ffffff),
        elevation: 0.0,
        title: Container(
          width: 130,
          height: 60,
          margin: const EdgeInsets.only(left: 60),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageManager.splashlogo), fit: BoxFit.fill),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_sharp),
            tooltip: 'more settings',
            iconSize: 35,
            color: ColorManager.whiteColor,
            padding: const EdgeInsets.fromLTRB(10, 5, 20, 5),
            onPressed: () {
              print("search clicked");
            },
          ),
        ],
      ),

      body: Container(
        margin: const EdgeInsets.only(top: 0),
        padding: const EdgeInsets.only(top: 65),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.2, 0.4, 0.7, 0.95],
            colors: [
              Color.fromARGB(116, 163, 8, 99),
              Color.fromARGB(179, 255, 103, 240),
              Color.fromARGB(179, 0, 185, 157),
              Color.fromARGB(122, 44, 179, 246),
              Color.fromARGB(106, 173, 3, 235),
            ],
          ),
        ),
        child: HomeComponents().buildHomeContent(context),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Container(
          padding: const EdgeInsets.only(top: 200),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageManager.splash_0), fit: BoxFit.cover),
          ),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              /*  const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageManager.splash_0),
                      fit: BoxFit.cover),
                ),
                child: Text('Drawer Header'),
              ),
            */

              Container(
                color: const Color(0x20ffffff),
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: const Text(
                    'Item 1',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                color: const Color(0x20ffffff),
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: const Text(
                    'Item 1',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                color: const Color(0x20ffffff),
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: const Text(
                    'Item 1',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                color: const Color(0x20ffffff),
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: const Text(
                    'Item 1',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
