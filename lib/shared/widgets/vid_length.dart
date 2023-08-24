import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../asset_config/assets.gen.dart';
import '../../core/theme/coloring.dart';
import 'text.dart';

class VideoLengthDisplay extends StatelessWidget {
  const VideoLengthDisplay({super.key, required this.length});
  final String length;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.svg.playSquare.svg(),
        SizedBox(
          width: 15.h,
        ),
        CapyText.poppins(text: length, size: 15.sp, color: CapyColors.primary)
      ],
    );
  }
}
