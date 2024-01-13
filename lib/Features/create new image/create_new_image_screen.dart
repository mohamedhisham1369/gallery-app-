import 'package:art_journal/core/theming/assets.dart';
import 'package:art_journal/core/theming/colors.dart';
import 'package:art_journal/core/widgets/custom_text_form_field.dart';
import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class CreataNewImageScreen extends StatelessWidget {
  const CreataNewImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(Assets.assetsImagesFoursquaremenutile),
        title: Text16(text: "Add an Entry"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0.sp),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: const Color(0xfff2f2f2)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.all(5.sp),
                        decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.upload,
                          color: Colors.white,
                        )),
                    Text14(
                      text: "Tap to upload",
                      weight: FontWeight.w400,
                      textColor: const Color(0xff595959),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text16(text: "Title"),
                  SizedBox(
                    height: 5.h,
                  ),
                  const CustomTextFormField(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text16(text: "date"),
                  SizedBox(
                    height: 5.h,
                  ),
                  const CustomTextFormField(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text16(text: "medium"),
                  SizedBox(
                    height: 5.h,
                  ),
                  const CustomTextFormField(hintText: "Select Medium"),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text16(text: "tags"),
                  SizedBox(
                    height: 5.h,
                  ),
                  const CustomTextFormField(hintText: "Select tags"),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text16(text: "description"),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextFormField(
                    height: 120.h,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
