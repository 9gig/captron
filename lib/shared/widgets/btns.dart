import 'package:captron/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theme/coloring.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key, required this.label, required this.onTaped});

  final String label;
  final VoidCallback onTaped;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTaped,
      child: Container(
        width: 350.w,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 15.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            gradient: LinearGradient(colors: [
              CapyColors.primary,
              Color.fromARGB(255, 196, 157, 255)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: CapyText.castoro(
            text: label, size: 16.sp, color: CapyColors.secondary),
      ),
    );
  }
}
