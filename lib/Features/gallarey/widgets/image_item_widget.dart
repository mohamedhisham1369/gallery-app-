import 'package:art_journal/core/helpers/extensions.dart';
import 'package:art_journal/core/routing/routes.dart';
import 'package:art_journal/core/theming/colors.dart';
import 'package:art_journal/core/widgets/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.sp),
                child: Container(
                  // color: const Color(0xff404040),
                  width: double.infinity,
                  color: Colors.transparent.withOpacity(0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff777876)),
                              child: IconButton(
                                  onPressed: () {
                                    context.pop();
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  )))
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 300.h,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pop();
                          context.pushNamed(Routes.imagedetailsScreen,
                              arguments: image);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text14(
                              text: "See details",
                              textColor: Colors.white,
                            ),
                            const Icon(
                              Icons.arrow_right_alt,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Padding(
          padding: EdgeInsets.all(2.sp),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.asset(image))),
    );
  }
}
