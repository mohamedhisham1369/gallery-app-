import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsItemWIdget extends StatelessWidget {
  const SettingsItemWIdget(
      {super.key, required this.value, required this.text});
  final bool value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text18(
              weight: FontWeight.w400,
              textColor: const Color(0xff595959),
              text: text,
            ),
            const Spacer(),
            Switch(
                value: value,
                onChanged: (open) {},
                activeColor: const Color(0xffff004c),
                hoverColor: const Color(0xffff004c),
                focusColor: const Color(0xffff004c))
          ],
        ),
        SizedBox(height: 5.h),
        Divider(
          color: Colors.grey.shade400,
        ),
        SizedBox(height: 5.h),
      ],
    );
  }
}
