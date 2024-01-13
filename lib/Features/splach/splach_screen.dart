import 'package:art_journal/core/helpers/extensions.dart';
import 'package:art_journal/core/routing/routes.dart';
import 'package:art_journal/core/theming/assets.dart';
import 'package:art_journal/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacementNamed(Routes.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: SvgPicture.asset(Assets.assetsImagesLogoMark),
        ));
  }
}
