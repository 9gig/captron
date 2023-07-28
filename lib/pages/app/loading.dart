import 'package:captron/theme/coloring.dart';
import 'package:captron/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/asset_config/assets.gen.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.loader.svg(),
          SizedBox(
            height: 25.h,
          ),
          CapyText.poppins(
              text: 'Loading', size: 24.sp, color: CapyColors.grey),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            width: 280.w,
            child: CapyText.poppins(
                text:
                    'Loading Your Dreams And Visions, Ready To Be Shaped And Shared With The World...',
                size: 12.sp,
                alignText: TextAlign.center,
                color: CapyColors.grey),
          ),
        ],
      ),
    ));
  }
}
