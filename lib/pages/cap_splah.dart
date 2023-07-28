import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/coloring.dart';

class CaptronSplash extends StatefulWidget {
  const CaptronSplash({super.key});

  @override
  State<CaptronSplash> createState() => _CaptronSplashState();
}

class _CaptronSplashState extends State<CaptronSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(
          seconds: 2,
        ),
        () => context.go('/signUp'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 390.w,
            height: 180.h,
            child: Stack(
              children: [
                Positioned(
                  left: 107.w,
                  top: 50.h,
                  child: Container(
                    width: 127.w,
                    height: 127.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffE5D9F8),
                              Color.fromARGB(255, 190, 161, 230),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                ),
                Positioned(
                  left: 156.w,
                  top: 13.h,
                  child: Container(
                    width: 127.w,
                    height: 127.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              CapyColors.primary,
                              Color(0xff3F088D),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'captron',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w400,
              color: CapyColors.secondary,
              fontFamily: GoogleFonts.carterOne().fontFamily,
            ),
          )
        ],
      ),
    );
  }
}
