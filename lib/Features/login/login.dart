import 'package:art_journal/core/helpers/extensions.dart';
import 'package:art_journal/core/routing/routes.dart';
import 'package:art_journal/core/theming/assets.dart';
import 'package:art_journal/core/theming/colors.dart';
import 'package:art_journal/core/widgets/custom_button.dart';
import 'package:art_journal/core/widgets/custom_text_form_field.dart';
import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:svg_flutter/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.assetsImagesGroup6795),
                SizedBox(height: 50.h),
                Text18(
                  text: "SIgn in with",
                  weight: FontWeight.w600,
                  size: 18.sp,
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0.sp),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(5.0.sp),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: const Icon(
                          FontAwesomeIcons.apple,
                          color: Colors.white,
                        )),
                    // const Icon(FontAwesomeIcons.google),
                    SvgPicture.asset(
                      Assets.assetsImagesGoogle,
                      height: 40.h,
                    ),
                    Container(
                        padding: EdgeInsets.all(5.0.sp),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: const Icon(
                          FontAwesomeIcons.behance,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: SvgPicture.asset(Assets.assetsImagesLine4)),
                    SizedBox(width: 10.w),
                    Text18(text: "or", size: 18.sp, weight: FontWeight.w600),
                    SizedBox(width: 10.w),
                    Expanded(child: SvgPicture.asset(Assets.assetsImagesLine4)),
                  ],
                ),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text24(
                      text: "Email",
                      size: 18.sp,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    const CustomTextFormField(
                      obscureText: false,
                    ),
                    SizedBox(height: 20.h),
                    Text24(
                      text: "Password",
                      size: 18.sp,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    const CustomTextFormField(
                      obscureText: true,
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                CustomButton(
                  text: "Sign in",
                  onPressed: () {
                    context.pushNamed(Routes.gallery);
                  },
                ),
                SizedBox(height: 20.h),
                Text16(
                  text: "Dang, I forgot my password",
                  textColor: AppColors.primaryColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
