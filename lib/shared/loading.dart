import 'package:captron/core/theme/coloring.dart';
import 'package:captron/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'asset_config/assets.gen.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ),
        () => context.push('/editing'));
  }

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
