import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:super_deal/service/router.dart';
import 'package:super_deal/ui/common/super_deal_color.dart';
import 'package:super_deal/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme:
              AppBarTheme(backgroundColor: SuperDealColors.appBarColor,
              )),
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: SuperDealColors.backGroundColor)),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return Home();
            case Routes.post:
              return Container(
                child: Center(child: Text('post')),
              );
            case Routes.style:
              return Container(
                child: Center(child: Text('Routes')),
              );
            default:
              return SizedBox.shrink(
                child: Center(child: Text('Shrink')),
              );
          }
        });
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
