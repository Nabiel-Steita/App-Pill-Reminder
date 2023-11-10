import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IntroductionScreen extends StatefulWidget {
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  double opacityLevel = 0.0;

  @override
  void initState() {
    super.initState();
    // Delay the animation to start after a short duration (e.g., 1 second)
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacityLevel = 1.0;
      });
    });
  }

  void _onButtonPressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home_page');
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define the percentage of the screen you want the SVG to occupy
    double svgWidthPercentage = 80.0; // Adjust as needed
    double svgHeightPercentage = 50.0; // Adjust as needed

    // Calculate the actual width and height based on percentages
    double svgWidth = (screenWidth * svgWidthPercentage / 100);
    double svgHeight = (screenHeight * svgHeightPercentage / 100);

    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: Duration(seconds: 1), // Duration of the animation
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'مرحبًا بك في تطبيق ذكرني',
                style: GoogleFonts.cairo(
                    color: Colors.blue[800],
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600
                ),
              ),

              SvgPicture.asset(
                'assets/images/Online Doctor-rafiki.svg',
                width: svgWidth,
                height: svgHeight, // Set the desired height
              ),
              Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                child: Material(
                  color: Colors.blue[800], // Set the desired button color
                  borderRadius: BorderRadius.circular(90.0), // Match the border radius
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10.0), // Match the border radius
                    onTap: () {
                      _onButtonPressed(context);
                    },
                    child: Center(
                      child: Text(
                        'دخول إلى التطبيق',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white, // Set the desired text color
                        ),
                      ),
                    ),
                  ),
                ),
              )

              ,
            ],
          ),
        ),
      ),
    );
  }
}
