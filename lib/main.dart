import 'package:captron/features/auth/repositories/auth_repo.dart';
import 'package:captron/features/home/view_models/nav.dart';
import 'package:captron/features/captions/view_models/tools.dart';
import 'package:captron/features/pick_and_trim.dart/view_models/trimmer.dart';
import 'package:captron/features/pick_and_trim.dart/view_models/video_picker.dart';
import 'package:captron/injections.dart';
import 'package:captron/core/routes/router.dart';
import 'package:captron/core/theme/coloring.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'features/auth/view_models/auth.dart';

void main() async {
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SwitchBottomNav()),
        ChangeNotifierProvider(
            create: (_) => AuthViewModel(authRepo: svl<AuthRepo>())),
        ChangeNotifierProvider(create: (_) => ToolsProvider()),
        ChangeNotifierProvider(create: (_) => PickAssets()),
        ChangeNotifierProvider(create: (_) => VideoTrimmer()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.black,
                splashFactory: InkSparkle.splashFactory,
                colorScheme:
                    ColorScheme.fromSeed(seedColor: CapyColors.primary),
                useMaterial3: true,
                splashColor: CapyColors.primary.withOpacity(.3)),
            debugShowCheckedModeBanner: false,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
