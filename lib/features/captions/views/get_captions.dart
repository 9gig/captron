import 'package:captron/shared/widgets/text.dart';
import 'package:captron/shared/widgets/vid_length.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../shared/asset_config/assets.gen.dart';
import '../../../core/theme/coloring.dart';
import '../../../shared/widgets/btns.dart';

class GetCaptions extends StatefulWidget {
  const GetCaptions({super.key});

  @override
  State<GetCaptions> createState() => _GetCaptionsState();
}

class _GetCaptionsState extends State<GetCaptions> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Assets.png.featGirl
              .image(width: 390.w, height: 445.h, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => context.pop(),
                    icon: Icon(
                      Icons.arrow_back,
                      color: CapyColors.secondary,
                    )),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  decoration: BoxDecoration(
                      color: CapyColors.primary,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: CapyText.carterOne(
                    text: 'Next',
                    size: 15.sp,
                    color: CapyColors.secondary,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 390.w,
              height: 428.h,
              decoration: BoxDecoration(
                  color: CapyColors.blacky,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: bottomView(),
            ),
          )
        ],
      )),
    );
  }

  bottomView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 26.h,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: VideoLengthDisplay(length: '0:32 / 0:20')),
        SizedBox(
          height: 20.h,
        ),
        LinearPercentIndicator(
          animation: true,
          animationDuration: 1000,
          lineHeight: 11.h,
          percent: .6,
          progressColor: CapyColors.primary,
          backgroundColor: Color(0xff282828),
          barRadius: Radius.circular(20.r),
        ),
        SizedBox(
          height: 50.h,
        ),
        Divider(
          color: CapyColors.grey.withOpacity(.6),
        ),
        drOption(),
        Divider(
          color: CapyColors.grey.withOpacity(.6),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            'Translate Language in English',
            style: TextStyle(
                fontSize: 16.sp,
                color: CapyColors.primary,
                fontWeight: FontWeight.w700,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Divider(
          color: CapyColors.grey.withOpacity(.6),
        ),
        SizedBox(
          height: 50.h,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
              width: 202.w,
              child: GradientButton(
                  label: 'Proceed', onTaped: () => context.push('/loading'))),
        )
      ],
    );
  }

  drOption() {
    return ListTile(
      title: CapyText.poppins(
          text: 'choose Language', size: 15.sp, color: CapyColors.secondary),
      subtitle: CapyText.poppins(
        text: 'Spanish',
        size: 15.sp,
        color: CapyColors.secondary,
        fontWeight: FontWeight.w700,
      ),
      trailing: Assets.svg.dropArrow.svg(),
    );
  }
}
