import 'package:captron/core/theme/coloring.dart';
import 'package:captron/shared/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'input_field.dart';

class CapyFormField extends StatelessWidget {
  const CapyFormField(
      {super.key,
      required this.label,
      required this.textControl,
      this.ick,
      this.hint,
      this.readOnly});
  final String label;
  final TextEditingController textControl;
  final Widget? ick;
  final String? hint;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0.w),
          child: CapyText.castoro(
              text: label, size: 16.sp, color: CapyColors.secondary),
        ),
        SizedBox(
          height: 8.h,
        ),
        CapyInputField(
          controller: textControl,
          trail: ick,
          hintText: hint,
          readOnly: readOnly ?? false,
        )
      ],
    );
  }
}
