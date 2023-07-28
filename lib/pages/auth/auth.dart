import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/asset_config/assets.gen.dart';
import '../../theme/coloring.dart';

class CaptronAuth extends StatelessWidget {
  const CaptronAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Captron',
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w600,
                    color: CapyColors.primary,
                    fontFamily: GoogleFonts.barlow().fontFamily,
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 271,
                  child: Text(
                    'Your Talking Videos Will Immediately Be Transcribed,Captioned,And Trimmed',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: CapyColors.secondary,
                      fontFamily: GoogleFonts.catamaran().fontFamily,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 39.h,
              ),
              btn(
                icon: Assets.svg.googleIcon.svg(),
                label: 'Sign In With Google',
                onTaped: () => context.go('/onboard'),
              ),
              SizedBox(
                height: 19.h,
              ),
              btn(
                icon: Assets.svg.appleIcon.svg(),
                label: 'continue with apple',
                onTaped: () => context.go('/onboard'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton btn(
      {required Widget icon,
      required String label,
      required VoidCallback onTaped}) {
    return ElevatedButton(
        onPressed: onTaped,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: CapyColors.blacky,
                fontFamily: GoogleFonts.castoro().fontFamily,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
