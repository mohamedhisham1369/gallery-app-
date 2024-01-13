import 'package:art_journal/core/theming/assets.dart';
import 'package:art_journal/core/theming/colors.dart';
import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:svg_flutter/svg.dart';

class ImageDetailsScreen extends StatelessWidget {
  const ImageDetailsScreen({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ,
        leading: SvgPicture.asset(Assets.assetsImagesFoursquaremenutile),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: Column(
          children: [
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              removeLeft: true,
              removeRight: true,
              child: SizedBox(
                  width: double.infinity,
                  height: 200.h,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 30.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text18(text: "Graffiti Woman"),
                        Text14(text: "Nov 12 • Procreate"),
                      ],
                    ),
                    const Spacer(),
                    const Icon(FontAwesomeIcons.heart)
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: Colors.grey.shade200),
                      child: Text14(
                        text: "Photography".toUpperCase(),
                        textColor: const Color(0xff595959),
                        weight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: Colors.grey.shade200),
                      child: Text14(
                        text: "Lady art".toUpperCase(),
                        weight: FontWeight.w400,
                        textColor: const Color(0xff595959),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      padding: EdgeInsets.all(2.sp),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xff595959),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text18(
                  text: "Write some notes about your piece.",
                  weight: FontWeight.w400,
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text16(
                        text: 'Edit entry',
                        textColor: AppColors.primaryColor,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const Icon(
                        Icons.edit,
                        color: AppColors.primaryColor,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
