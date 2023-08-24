import 'package:captron/core/theme/coloring.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CapyInputField extends StatefulWidget {
  const CapyInputField(
      {super.key,
      required this.controller,
      this.trail,
      this.hintText,
      this.readOnly});
  final TextEditingController controller;
  final Widget? trail;
  final String? hintText;
  final bool? readOnly;

  @override
  State<CapyInputField> createState() => _CapyInputFieldState();
}

class _CapyInputFieldState extends State<CapyInputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      width: 350.w,
      child: TextFormField(
        readOnly: widget.readOnly ?? false,
        onChanged: (newValue) {
          setState(() {
            widget.controller.text = newValue;
          });
        },
        style: TextStyle(color: CapyColors.secondary),
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: CapyColors.grey.withOpacity(.5),
                fontStyle: FontStyle.italic,
                fontSize: 16.sp),
            suffixIcon: widget.trail,
            enabled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide(color: CapyColors.primary)),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.h)),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
