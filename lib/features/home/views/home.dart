import 'package:captron/shared/asset_config/assets.gen.dart';
import 'package:captron/features/pick_and_trim.dart/view_models/video_picker.dart';
import 'package:captron/core/theme/coloring.dart';
import 'package:captron/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../view_models/nav.dart';

class Captron extends StatelessWidget {
  const Captron({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<SwitchBottomNav>().currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (curr) {
          if (curr == 1) {
            showModalBottomSheet(
                backgroundColor: CapyColors.blacky2,
                isDismissible: false,
                context: context,
                builder: (_) => Container(
                      width: 390.w,
                      height: 541.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r))),
                      child: buildCreate(_),
                    ));
          } else {
            context.read<SwitchBottomNav>().switchNav(curr);
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Assets.svg.activityIcon.svg(), label: 'Activities'),
          BottomNavigationBarItem(
              icon: Container(
                width: 94.w,
                height: 36.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: CapyColors.primary,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Text(
                  'create',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: CapyColors.secondary,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.castoro().fontFamily),
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Assets.svg.profileIcon.svg(), label: 'Profile'),
        ],
        elevation: 0,
        backgroundColor: CapyColors.blacky,
        showUnselectedLabels: true,
        selectedItemColor: CapyColors.secondary,
        unselectedItemColor: CapyColors.secondary,
      ),
    );
  }

  buildCreate(BuildContext context) {
    buildOption({required String text, required Widget icon}) {
      return InkWell(
        onTap: () {
          // context.push('/trimvideo');
          context.read<PickAssets>().selectVideo(context);
        },
        child: Container(
          padding: const EdgeInsets.all(1.3),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                CapyColors.primary,
                CapyColors.primary.withOpacity(.35),
              ]),
              borderRadius: BorderRadius.circular(7.r)),
          child: Container(
            height: 85.h,
            width: 155.w,
            decoration: BoxDecoration(
                color: CapyColors.blacky2,
                borderRadius: BorderRadius.circular(7.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                SizedBox(
                  height: 8.h,
                ),
                CapyText.castoro(
                    text: text, size: 15.sp, color: CapyColors.primary)
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        Container(
          width: 47.w,
          height: 3.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            CapyColors.primary,
            CapyColors.primary.withOpacity(.2),
          ])),
        ),
        SizedBox(
          height: 20.h,
        ),
        CapyText.castoro(
            text: 'Create Your Experience Victor',
            size: 15.sp,
            color: CapyColors.primary),
        SizedBox(
          height: 40.h,
        ),
        buildOption(text: 'Import', icon: Assets.svg.import.svg()),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildOption(
              text: 'Camera',
              icon: Assets.svg.camera.svg(),
            ),
            buildOption(text: 'Script', icon: Assets.svg.script.svg())
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        buildOption(text: 'Teleprompter', icon: Assets.svg.telep.svg()),
        SizedBox(
          height: 20.h,
        ),
        InkWell(
            onTap: () => Navigator.pop(context), child: Assets.svg.close.svg())
      ],
    );
  }
}
