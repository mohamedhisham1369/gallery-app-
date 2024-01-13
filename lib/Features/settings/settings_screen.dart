import 'package:art_journal/Features/settings/widgets/settings_item_widget.dart';
import 'package:art_journal/core/theming/assets.dart';
import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text18(text: "settings"),
        leading: SvgPicture.asset(Assets.assetsImagesFoursquaremenutile),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0.sp),
        child: const Column(
          children: [
            SettingsItemWIdget(
              value: false,
              text: 'Notifications',
            ),
            SettingsItemWIdget(
              value: true,
              text: 'Fluid display grid',
            ),
            SettingsItemWIdget(
              value: true,
              text: 'Entry medium',
            ),
            SettingsItemWIdget(
              value: true,
              text: 'Entry description',
            ),
          ],
        ),
      ),
    );
  }
}
