import 'package:devmovic/core/utils/color_manager.dart';
import 'package:devmovic/core/utils/fonts_manager.dart';
import 'package:devmovic/core/utils/images_manager.dart';
import 'package:devmovic/core/utils/string_manager.dart';
import 'package:devmovic/presentation/splash/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController _splashController = SplashController();
  @override
  Widget build(BuildContext context) {
    _splashController.goHome(3, context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageManager.splash_4), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                  // color: const Color(0x40e4b68a),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.005, 0.8],
                    colors: [
                      Color.fromARGB(142, 227, 227, 227),
                      Color.fromARGB(98, 28, 26, 28),
                    ],
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(150),
                    topRight: Radius.circular(150),
                  ),
                  border: Border.all(
                    //color: ColorManager.whiteColor,
                    width: 0.0,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Image(
                    image: AssetImage(ImageManager.splashlogo),
                    width: 200,
                    height: 100,
                  ),
                  Text(
                    StringManager.splashString,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: FontManager.dosisBold,
                        fontSize: 30,
                        color: ColorManager.whiteColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
