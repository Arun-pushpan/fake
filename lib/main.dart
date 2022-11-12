import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geograff/screens/home/signIn/login.dart';
import 'package:geograff/screens/setTheme/modelTheme.dart';
import 'package:geograff/screens/home/route/route_page.dart'as route;
import 'package:provider/provider.dart';
main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  final appTitle="GEOGRAF" ;
  const Myapp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(

      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
            return MaterialApp(
                title: appTitle,
                theme: themeNotifier.isDark
                    ? ThemeData(
                  brightness: Brightness.dark,
                )
                    : ThemeData(
                    brightness: Brightness.light,
                    primarySwatch: Colors.green,
                    primaryColor: Colors.blue
                ),
                debugShowCheckedModeBanner: false,
                onGenerateRoute: route.controller,//initialRoute: route.homePage,
                home: SplashScreenPage()
            );
          }
      ),
    );

  }
}

