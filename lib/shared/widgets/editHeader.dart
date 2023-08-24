import 'package:captron/shared/widgets/vid_length.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../asset_config/assets.gen.dart';

class EditiHeader extends StatelessWidget {
  const EditiHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.svg.transform.svg(),
          VideoLengthDisplay(length: '0:58 / 0:23'),
          Assets.svg.ratio.svg(),
        ],
      ),
    );
  }
}
