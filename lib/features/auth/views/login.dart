import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../view_models/auth.dart';
import '../../../core/theme/coloring.dart';
import '../../../shared/widgets/btns.dart';
import '../../../shared/widgets/form_fields.dart';

class LoginAuth extends StatelessWidget {
  LoginAuth({super.key});
  final phone = TextEditingController();
  final pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 70.h,
          ),
          buildTopTitle(),
          SizedBox(
            height: 70.h,
          ),
          loginForm(),
          SizedBox(
            height: 70.h,
          ),
        ]),
      ),
    ));
  }

  loginForm() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CapyFormField(label: 'Phone Number', textControl: pass),
          SizedBox(
            height: 25.h,
          ),
          CapyFormField(
            label: 'Password',
            textControl: pass,
            ick: Icon(
              Icons.visibility_off_outlined,
              color: CapyColors.secondary,
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Consumer<AuthViewModel>(builder: (context, auth, child) {
            return GradientButton(
                label: 'Login', onTaped: () => context.push('/onboard'));
          })
        ],
      ),
    );
  }

  buildTopTitle() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Wave',
            style: TextStyle(
              fontSize: 36.sp,
              fontWeight: FontWeight.w600,
              color: CapyColors.primary,
              fontFamily: GoogleFonts.barlow().fontFamily,
            ),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 250.w,
            child: Text(
              'Transform Your Videos with our Editing Magic, make the best captions',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: CapyColors.secondary,
                fontFamily: GoogleFonts.catamaran().fontFamily,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
