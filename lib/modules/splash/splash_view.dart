import 'package:devmovic/core/utils/color_manager.dart';
import 'package:devmovic/core/utils/fonts_manager.dart';
import 'package:devmovic/core/utils/images_manager.dart';
import 'package:devmovic/core/utils/string_manager.dart';
import 'package:devmovic/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController _splashController = SplashController();
  @override
  Widget build(BuildContext context) {
    //_splashController.goHome(5, context);
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
              height: 200.0,
              decoration: BoxDecoration(
                  color: const Color(0x66ffffff),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                  border: Border.all(
                    color: ColorManager.whiteColor,
                    width: 1.5,
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
                        fontFamily: FontManager.dosis_bold,
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
    // TODO: implement dispose
    super.dispose();
  }
}
