import 'package:art_journal/Features/gallarey/widgets/image_item_widget.dart';
import 'package:art_journal/Features/gallarey/widgets/menu_item_widget.dart';
import 'package:art_journal/Features/gallarey/widgets/search_widget.dart';
import 'package:art_journal/core/helpers/extensions.dart';
import 'package:art_journal/core/routing/routes.dart';
import 'package:art_journal/core/theming/assets.dart';
import 'package:art_journal/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      Assets.assetsImages1,
      Assets.assetsImages2,
      Assets.assetsImages3,
      Assets.assetsImages4,
      Assets.assetsImages5,
      Assets.assetsImages6,
      Assets.assetsImages3,
      Assets.assetsImages4,
      Assets.assetsImages5,
      Assets.assetsImages1,
      Assets.assetsImages2,
      Assets.assetsImages3,
      Assets.assetsImages3,
      Assets.assetsImages4,
      Assets.assetsImages5,
      Assets.assetsImages4,
      Assets.assetsImages5,
      Assets.assetsImages6,
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: MasonryGridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: images.length,
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return ImageItemWidget(
                image: images[index],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  useSafeArea: true,
                  builder: (BuildContext context) {
                    return const SearchWIdget();
                  },
                );
              },
              icon: const Icon(Icons.search)),
          SizedBox(
            width: 10.w,
          ),
          IconButton(
              onPressed: () {
                context.pushNamed(Routes.createNewimage);
              },
              icon: Container(
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColor, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ))),
          SizedBox(
            width: 10.w,
          ),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  useSafeArea: true,
                  builder: (BuildContext context) {
                    return Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Spacer(),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 60.w),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 20.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MenuItemWidget(
                                  onpressed: () {
                                    context.pop();
                                    context.pushNamed(Routes.settingsScreen);
                                  },
                                  text: 'Settings',
                                  icon: Icons.settings,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                MenuItemWidget(
                                  onpressed: () {},
                                  text: 'Account',
                                  icon: Icons.person,
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                MenuItemWidget(
                                  onpressed: () {},
                                  text: 'About',
                                  icon: Icons.info_outline,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      bottomNavigationBar: SafeArea(
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 10.h, bottom: 10.h, right: 110.w),
                          width: double.infinity,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  padding: EdgeInsets.all(5.sp),
                                  decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle),
                                  child: const Icon(Icons.menu))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.menu))
        ],
      )),
    );
  }
}
