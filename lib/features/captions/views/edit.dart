import 'package:captron/core/theme/coloring.dart';
import 'package:captron/shared/widgets/editHeader.dart';
import 'package:captron/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../shared/asset_config/assets.gen.dart';
import '../models/editor.dart';
import '../view_models/tools.dart';

class EditingPage extends StatelessWidget {
  EditingPage({super.key});
  final Color activeColor = CapyColors.secondary;
  final Color inActivectiveColor = CapyColors.primary;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Assets.png.featGirl
                  .image(height: 665.h, width: 390.w, fit: BoxFit.cover),
              EditiHeader(),
              Padding(
                padding: EdgeInsets.only(left: 12.0.w),
                child: Consumer<ToolsProvider>(
                    builder: (context, toolsProvide, child) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            tools.length,
                            (index) => GestureDetector(
                                  onTap: () {
                                    toolsProvide.switchTools(index);
                                  },
                                  child: SizedBox(
                                    width: 55.w,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          tools[index].toolIcon,
                                          color: toolsProvide.toolIndex == index
                                              ? activeColor
                                              : inActivectiveColor,
                                          height: 25.h,
                                        ),
                                        SizedBox(
                                          height: 6.h,
                                        ),
                                        CapyText.castoro(
                                          text: tools[index].label,
                                          size: 12.sp,
                                          color: toolsProvide.toolIndex == index
                                              ? activeColor
                                              : inActivectiveColor,
                                        )
                                      ],
                                    ),
                                  ),
                                ))),
                  );
                }),
              )
            ],
          ),
        ),
        SizedBox(
          height: 665.h,
          child: Center(
            child: LongPressDraggable<Widget>(
              data: CapyText.poppins(
                  text: 'When you have a dream',
                  size: 20.sp,
                  color: CapyColors.secondary),
              // dragAnchorStrategy: pointerDragAnchorStrategy,
              child: CapyText.poppins(
                  text: 'When you have a dream',
                  size: 20.sp,
                  color: CapyColors.secondary),
              feedback: CapyText.poppins(
                  text: 'When you have a dream',
                  size: 20.sp,
                  color: CapyColors.secondary),
              childWhenDragging: SizedBox.shrink(),
            ),
          ),
        ),
        // DragTarget<Widget>(
        //   builder: (context, _, __) => Container(
        //     width: MediaQuery.of(context).size.width,
        //     height: 665.h,
        //     color: CapyColors.primary.withOpacity(.3),
        //   ),
        //   onAccept: (data) {
        //     SetState(builder: (context, _) => data);
        //   },
        // ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            decoration: BoxDecoration(
                color: CapyColors.primary,
                borderRadius: BorderRadius.circular(5.r)),
            child: CapyText.carterOne(
              text: 'Next',
              size: 15.sp,
              color: CapyColors.secondary,
            ),
          ),
        )
      ])),
    );
  }
}
