import 'package:captron/core/theme/coloring.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/asset_config/assets.gen.dart';

class CaptronOnboard extends StatelessWidget {
  const CaptronOnboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: 844.h,
            width: 390.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.png.girly.path),
                    fit: BoxFit.fitWidth)),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              CapyColors.primary.withOpacity(.15),
              CapyColors.primary.withOpacity(.3)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Icon(
                          Icons.cancel,
                          color: Color.fromARGB(255, 1, 26, 1),
                          size: 30,
                        ),
                      ),
                      Text(
                        'Restore',
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: CapyColors.secondary,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.castoro().fontFamily),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 200.h,
                  ),
                  Align(
                    child: SizedBox(
                      height: 246.h,
                      width: 218.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Advanced',
                            style: TextStyle(
                                fontSize: 24.sp,
                                color: CapyColors.secondary,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.castoro().fontFamily),
                          ),
                          Text(
                            'Video Editor',
                            style: TextStyle(
                                fontSize: 32.sp,
                                color: CapyColors.secondary,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.castoro().fontFamily),
                          ),
                          SizedBox(height: 14.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                features(
                                  ick: Assets.svg.ick1.svg(),
                                  description: 'Premium Filters',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                features(
                                  ick: Assets.svg.ick2.svg(),
                                  description: 'Premium Filters',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                features(
                                  ick: Assets.svg.ick3.svg(),
                                  description: 'Premium Filters',
                                ),
                              ]),
                          SizedBox(height: 30.h),
                          Text(
                            '7 Days Free Trial',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: CapyColors.secondary,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.castoro().fontFamily),
                          ),
                          Text(
                            'After Trial \$5.66/month',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: CapyColors.secondary,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.castoro().fontFamily),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 79.h,
                  ),
                  SizedBox(
                    // height: 100.h,
                    width: 350.w,
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () => context.go('/home'),
                          child: Container(
                            width: 350.w,
                            height: 43.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                    color: CapyColors.blacky, width: 1.0),
                                gradient: LinearGradient(colors: [
                                  CapyColors.primary,
                                  Color.fromARGB(255, 196, 157, 255)
                                ])),
                            child: Text(
                              'subscribe',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: GoogleFonts.castoro().fontFamily),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => context.go('/home'),
                          child: Container(
                            width: 350.w,
                            height: 43.h,
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(
                                    color: CapyColors.blacky, width: 1.0),
                                color: CapyColors.secondary),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Not sure? Enable Trial',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: CapyColors.blacky,
                                    fontWeight: FontWeight.w400,
                                    fontFamily:
                                        GoogleFonts.castoro().fontFamily),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  features({required Widget ick, required String description}) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ick,
          SizedBox(height: 12.h),
          SizedBox(
            width: 49.w,
            height: 26.h,
            child: Text(
              description,
              style: TextStyle(
                  color: CapyColors.secondary,
                  fontSize: 10.sp,
                  fontFamily: GoogleFonts.castoro().fontFamily),
              textAlign: TextAlign.center,
            ),
          )
        ]);
  }
}
