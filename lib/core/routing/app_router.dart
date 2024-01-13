import 'package:art_journal/Features/Image%20details/image_details_Screen.dart';
import 'package:art_journal/Features/create%20new%20image/create_new_image_screen.dart';
import 'package:art_journal/Features/gallarey/gallery_screen.dart';
import 'package:art_journal/Features/login/login.dart';
import 'package:art_journal/Features/settings/settings_screen.dart';
import 'package:art_journal/Features/splach/splach_screen.dart';
import 'package:art_journal/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return PageTransition(
          child: const SplachScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );

      case Routes.login:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.gallery:
        return PageTransition(
          child: const GalleryScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.imagedetailsScreen:
        final image = settings.arguments as String;
        return PageTransition(
          child: ImageDetailsScreen(
            image: image,
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );

      case Routes.createNewimage:
        return PageTransition(
          child: const CreataNewImageScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
           case Routes.settingsScreen:
        return PageTransition(
          child: const SettingsScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );

      default:
        return PageTransition(
          child: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.center,
          settings: settings,
        );
    }
  }
}
