import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:it_final_project_atom_tech/home_page.dart';
import 'package:sizer/sizer.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'welcome_screen.dart'; // Import the introduction screen file

void main() {
  tz.initializeTimeZones();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType){
      return MaterialApp(
        title: 'Medication Reminder',
        // Theme customization
        theme: ThemeData.dark().copyWith(
            primaryColor: Colors.white,
            scaffoldBackgroundColor: Colors.blue[50],

            appBarTheme: AppBarTheme(
                elevation: 0.0,
                backgroundColor: Colors.blue[50]
            ),
            textTheme: TextTheme(
                headline4: GoogleFonts.cairo(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[900],
                )
            )
        ),
        initialRoute: '/', // Set the initial route
        routes: {
          '/': (context) => IntroductionScreen(), // Map '/' route to the introduction screen
          '/home_page': (context) => HomePage(), // Map '/homePage' route to the main screen
        },
      );
    });
  }
}
