import 'package:captron/theme/coloring.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'My Activities',
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
                'No Projects',
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
                'To Upload Your First Project And Witness\nSome Magic, Click The Button Below.',
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
