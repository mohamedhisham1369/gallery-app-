import 'package:art_journal/core/theming/colors.dart';
import 'package:art_journal/core/widgets/custom_text_form_field.dart';
import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWIdget extends StatelessWidget {
  const SearchWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 110.w, top: 10.h, bottom: 10.h),
            width: double.infinity,
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.all(5.sp),
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: const Icon(Icons.search))
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0.h),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text18(
                  text: "Quick search",
                  weight: FontWeight.w600,
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: Colors.white,
                  height: 0.5.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text16(
                      text: "my Favorites",
                      weight: FontWeight.w600,
                      textColor: Colors.white,
                    ),
                    const Icon(
                      Icons.favorite,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text18(
                  text: "Lady art",
                  weight: FontWeight.w600,
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text18(
                  text: "Photography",
                  weight: FontWeight.w600,
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text18(
                  text: "Pen & Ink",
                  weight: FontWeight.w600,
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: 30.h,
                ),
                const Spacer(),
                Text16(
                  text: "Search titles, tags, dates, media...",
                  weight: FontWeight.w600,
                  textColor: Colors.white,
                ),
                CustomTextFormField(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 25.sp,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
