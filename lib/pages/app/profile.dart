import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/coloring.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              color: CapyColors.secondary,
              fontSize: 24.sp,
              fontFamily: GoogleFonts.castoro().fontFamily),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Center(
        child: SizedBox(
          width: 273.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nothing to see here',
                style: TextStyle(
                    fontSize: 24.sp,
                    color: CapyColors.secondary,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.castoro().fontFamily),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                'Not a user yet',
                style: TextStyle(
                    fontSize: 13.sp,
                    color: CapyColors.secondary,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.castoro().fontFamily),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
