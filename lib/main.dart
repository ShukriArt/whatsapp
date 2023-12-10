import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/Homepage.dart';
//import 'package:flutter/src/material/popup_menu.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'whatsapp clone',    theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xff075E55),
        ),
        // To transparent the bottom sheet on chat page you will see
        bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.black.withOpacity(0),
        ),
        ),
        routes: {
          "/" : (context) => Homepage(),
        },
      );
  }
}
