import 'package:captron/provider/auth.dart';
import 'package:captron/widgets/btns.dart';
import 'package:captron/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../theme/coloring.dart';
import '../../widgets/text.dart';

class SignUPAuth extends StatelessWidget {
  SignUPAuth({super.key});

  final fName = TextEditingController();
  final sName = TextEditingController();
  final phone = TextEditingController();
  final pass = TextEditingController();
  final confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> signUpView = [details(), password(ctx: context)];
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Consumer<AuthProvider>(builder: (context, auth, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70.h,
              ),
              buildTopTitle(),
              SizedBox(
                height: 55.h,
              ),
              signUpView[auth.signUpIndex],
              // details()
            ],
          );
        }),
      )),
    );
  }

  buildTopTitle() {
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            'Captron',
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

  details() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CapyFormField(label: 'First Name', textControl: fName),
          SizedBox(
            height: 25.h,
          ),
          CapyFormField(label: 'Last Name', textControl: sName),
          SizedBox(
            height: 25.h,
          ),
          CapyFormField(label: 'Phone Number', textControl: phone),
          SizedBox(
            height: 50.h,
          ),
          Consumer<AuthProvider>(builder: (context, auth, child) {
            return GradientButton(
                label: 'Next', onTaped: () => auth.switchsignUp(1));
          })
        ],
      ),
    );
  }

  password({required BuildContext ctx}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CapyFormField(
            label: 'Enter Password',
            textControl: pass,
            ick: Icon(Icons.visibility_off_outlined,
                color: CapyColors.secondary),
          ),
          SizedBox(
            height: 25.h,
          ),
          CapyFormField(
            label: 'Confirm Password',
            textControl: confirmPass,
            ick: Icon(Icons.visibility_off_outlined,
                color: CapyColors.secondary),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: 350.w,
            child: CapyText.catamaran(
                text:
                    'passwords should require a combination of uppercase and lowercase letters, numbers, and special characters to create a strong and unique password.',
                size: 12.sp,
                alignText: TextAlign.center,
                color: Color(0xffC391EF).withOpacity(.45)),
          ),
          SizedBox(
            height: 30.h,
          ),
          GradientButton(
              label: 'Sign Up',
              onTaped: () {
                ctx.go('/login');
              })
        ],
      ),
    );
  }
}
