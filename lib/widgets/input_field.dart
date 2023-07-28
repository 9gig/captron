import 'package:captron/theme/coloring.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CapyInputField extends StatelessWidget {
  const CapyInputField({super.key, required this.controller, this.trail});
  final TextEditingController controller;
  final Widget? trail;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      width: 350.w,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: trail,
            enabled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide(color: CapyColors.primary))),
      ),
    );
  }
}
