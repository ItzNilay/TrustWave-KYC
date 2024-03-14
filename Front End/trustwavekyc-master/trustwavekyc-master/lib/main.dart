import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:trustwavekyc/global/colors.dart';
import 'package:trustwavekyc/providers/detailfillersprovider.dart';
import 'package:trustwavekyc/screens/homepage.dart';
import 'package:trustwavekyc/screens/newkycscreens/documentpage.dart';
import 'package:trustwavekyc/screens/newkycscreens/newkycscreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white.withAlpha(0),
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DetailFillerProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: ThemeColors.mainColor,
        fontFamily: 'poppins',
      ),
      home: const HomePage(),
      // home: NewKycScreen(),
      // home: DocumentPage(),
    );
  }
}
