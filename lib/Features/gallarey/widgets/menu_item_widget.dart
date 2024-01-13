import 'package:art_journal/core/theming/colors.dart';
import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget(
      {super.key,
      required this.onpressed,
      required this.text,
      required this.icon});
  final VoidCallback onpressed;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text14(
            text: text,
            weight: FontWeight.w700,
            textColor: AppColors.primaryColor,
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(
            icon,
            color: AppColors.primaryColor,
          )
        ],
      ),
    );
  }
}
