import 'package:captron/features/pick_and_trim.dart/view_models/trimmer.dart';
import 'package:captron/features/pick_and_trim.dart/view_models/video_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:video_trimmer/video_trimmer.dart';
import '../../../core/theme/coloring.dart';
import '../../../shared/widgets/editHeader.dart';
import '../../../shared/widgets/text.dart';

class TrimVideo extends StatelessWidget {
  const TrimVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          // Assets.png.featGirl
          //     .image(width: 390.w, height: 585.h, fit: BoxFit.cover),
          AspectRatio(
            aspectRatio: 9 / 16,
            child: VideoViewer(trimmer: context.watch<PickAssets>().trimmer),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () => context.pop(),
                    icon: Icon(
                      Icons.arrow_back_ios,
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
              height: 263.h,
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
        EditiHeader(),
        SizedBox(
          height: 10.h,
        ),
        //Trim timeline
        Align(
          alignment: Alignment.center,
          child: Consumer<PickAssets>(builder: (context, vid, child) {
            return SizedBox(
              height: 78.h,
              // width: double.infinity,
              child: TrimViewer(
                trimmer: vid.trimmer,
                viewerHeight: 51.h,
                viewerWidth: double.infinity,
                maxVideoLength: Duration(
                    seconds: vid.trimmer.videoPlayerController!.value.duration
                        .inSeconds),

                //Styles
                editorProperties: TrimEditorProperties(
                  borderPaintColor: CapyColors.primary,
                  circlePaintColor: CapyColors.primary,
                ),
                onChangeStart: (startValue) {
                  context.read<VideoTrimmer>().resetStartValue(startValue);
                },
                onChangeEnd: (endValue) {
                  context.read<VideoTrimmer>().resetEndValue(endValue);
                },
                onChangePlaybackState: (value) {
                  context.read<VideoTrimmer>().resetPlayBack();
                },
              ),
            );
          }),
        ),
        SizedBox(
          height: 40.h,
        ),
        //Trim Control
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 12.h),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [CapyColors.primary, CapyColors.purpleLight],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              controls(label: 'Cancel', icon: Icons.close, clicked: () {}),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
                decoration: BoxDecoration(
                    color: CapyColors.blacky,
                    borderRadius: BorderRadius.circular(5.r)),
                child: CapyText.castoro(
                    text: 'Trim', size: 15.sp, color: CapyColors.secondary),
              ),
              controls(label: 'Done', icon: Icons.check, clicked: () {}),
            ],
          ),
        )
      ],
    );
  }

  // trimer() {
  //   return Trimmer();
  // }

  controls(
      {required String label,
      required IconData icon,
      required VoidCallback clicked}) {
    return InkWell(
      onTap: () => clicked,
      child: Column(
        children: [
          Icon(
            icon,
            color: CapyColors.secondary,
          ),
          CapyText.castoro(
              text: label, size: 15.sp, color: CapyColors.secondary)
        ],
      ),
    );
  }
}
