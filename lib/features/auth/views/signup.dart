import 'package:captron/features/auth/view_models/auth.dart';
import 'package:captron/shared/widgets/btns.dart';
import 'package:captron/shared/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../core/theme/coloring.dart';
import '../../../shared/widgets/text.dart';

class SignUPAuth extends StatelessWidget {
  SignUPAuth({super.key});
  static final signupForm = GlobalKey<FormState>();
  static final otpForm = GlobalKey<FormState>();
  final fName = TextEditingController();
  final sName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final pass = TextEditingController();
  final code = TextEditingController();
  final confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> signUpView = [details(), otp(ctx: context)];
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Consumer<AuthViewModel>(builder: (context, auth, child) {
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

  details() {
    return SingleChildScrollView(
      child: Form(
        key: signupForm,
        child: Column(
          children: [
            CapyFormField(label: 'Full Name', textControl: fName),
            SizedBox(
              height: 25.h,
            ),
            CapyFormField(label: 'Phone', textControl: phone),
            SizedBox(
              height: 50.h,
            ),
            Consumer<AuthViewModel>(builder: (context, authy, child) {
              return GradientButton(
                  label: 'Sign Up',
                  onTaped: () {
                    authy.setUserDetails(name: fName.text, phone: phone.text);
                    authy.switchsignUp(1);
                  });
            })
          ],
        ),
      ),
    );
  }

  otp({required BuildContext ctx}) {
    return Consumer<AuthViewModel>(builder: (context, authy, child) {
      return Form(
        key: otpForm,
        child: Column(
          children: [
            CapyFormField(
                label: 'Phone Number',
                readOnly: true,
                hint: authy.phoneNumber,
                textControl: phone,
                ick: InkWell(
                  onTap: () {
                    print('Get Otp');
                  },
                  radius: 20.r,
                  child: Container(
                    width: 80.w,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.r),
                            topLeft: Radius.circular(5.r),
                            bottomLeft: Radius.circular(5.r),
                            bottomRight: Radius.circular(20.r)),
                        gradient: LinearGradient(colors: [
                          CapyColors.purpleDark,
                          CapyColors.primary
                        ])),
                    child: CapyText.castoro(
                        text: 'Get Otp',
                        size: 16.sp,
                        color: CapyColors.secondary),
                  ),
                )),
            SizedBox(
              height: 5.h,
            ),
            CapyFormField(
              label: '',
              textControl: code,
              hint: 'Enter code....',
            ),
            SizedBox(
              height: 30.h,
            ),
            GradientButton(
                label: 'Submit',
                onTaped: () {
                  authy.signup();
                })
          ],
        ),
      );
    });
  }

  // password({required BuildContext ctx}) {
  //   return SingleChildScrollView(
  //     child: Column(
  //       children: [
  //         CapyFormField(
  //           label: 'Enter Password',
  //           textControl: pass,
  //           ick: Icon(Icons.visibility_off_outlined,
  //               color: CapyColors.secondary),
  //         ),
  //         SizedBox(
  //           height: 25.h,
  //         ),
  //         CapyFormField(
  //           label: 'Confirm Password',
  //           textControl: confirmPass,
  //           ick: Icon(Icons.visibility_off_outlined,
  //               color: CapyColors.secondary),
  //         ),
  //         SizedBox(
  //           height: 30.h,
  //         ),
  //         SizedBox(
  //           width: 350.w,
  //           child: CapyText.catamaran(
  //               text:
  //                   'passwords should require a combination of uppercase and lowercase letters, numbers, and special characters to create a strong and unique password.',
  //               size: 12.sp,
  //               alignText: TextAlign.center,
  //               color: Color(0xffC391EF).withOpacity(.45)),
  //         ),
  //         SizedBox(
  //           height: 30.h,
  //         ),
  //         GradientButton(
  //             label: 'Sign Up',
  //             onTaped: () {
  //               ctx.push('/login');
  //             })
  //       ],
  //     ),
  //   );
  // }
}
