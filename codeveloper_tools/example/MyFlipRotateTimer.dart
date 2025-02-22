// Import the Flutter material package for basic UI components.
import 'package:flutter/material.dart';
// Import the Codeveloper Tools package where MyFlipRotateTimer is defined.
// Adjust the path if necessary to match your package structure.
import 'package:codeveloper_tools/codeveloper_tools.dart'; 

// The main function is the entry point of the Flutter application.
void main() => runApp(FlipRotateTimerExampleApp());

/// The root widget of the example app.
class FlipRotateTimerExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp provides the material design framework for the app.
    return MaterialApp(
      title: 'MyFlipRotateTimer Example', // Title of the application.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Sets the primary color theme.
      ),
      // The home property defines the default route of the app.
      home: FlipRotateTimerExamplePage(),
    );
  }
}

/// A stateful widget that demonstrates the usage of MyFlipRotateTimer.
class FlipRotateTimerExamplePage extends StatefulWidget {
  @override
  _FlipRotateTimerExamplePageState createState() =>
      _FlipRotateTimerExamplePageState();
}

/// The state class for FlipRotateTimerExamplePage.
/// This is where we manage the timer state and update the UI accordingly.
class _FlipRotateTimerExamplePageState
    extends State<FlipRotateTimerExamplePage> {
  // This variable holds the current status of the timer.
  String _status = "Timer Running...";

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic visual layout structure.
    return Scaffold(
      appBar: AppBar(
        title: Text('Flip Rotate Timer Example'), // Title in the AppBar.
      ),
      // Center widget centers its child vertically and horizontally.
      body: Center(
        // Column arranges its children vertically.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the children.
          children: <Widget>[
            // The MyFlipRotateTimer widget displays the countdown timer.
            MyFlipRotateTimer(
              // Set the display mode to countdown.
              displayMode: DisplayMode.countdown,
              // Set the initial countdown duration to 10 seconds.
              initialDuration: Duration(seconds: 10),
              // Use the flip animation mode for digit transitions.
              animationMode: AnimationMode.flip,
              // Define the text style for the digits.
              digitTextStyle: TextStyle(
                fontSize: 32, // Font size of 32.
                fontWeight: FontWeight.bold, // Bold text.
                color: Colors.white, // White text color.
              ),
              cardWidth: 50, // Width of each digit card.
              cardHeight: 70, // Height of each digit card.
              // Duration for the digit flip animation.
              digitAnimDuration: Duration(milliseconds: 800),
              // Define a custom decoration for the digit card.
              cardDecoration: BoxDecoration(
                color: Colors.black, // Background color of the card.
                borderRadius: BorderRadius.circular(8), // Rounded corners.
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Shadow color.
                    blurRadius: 4, // Blur radius of the shadow.
                    offset: Offset(0, 2), // Offset of the shadow.
                  ),
                ],
              ),
              // Callback invoked when the countdown reaches zero.
              onComplete: () {
                // Update the status to indicate completion.
                setState(() {
                  _status = "Countdown Complete!";
                });
              },
              // Callback for each flip of the seconds digit.
              onSecondFlip: (timeEvent) {
                print("Second flipped: $timeEvent");
              },
              // Callback for each flip of the minutes digit.
              onMinuteFlip: (timeEvent) {
                print("Minute flipped: $timeEvent");
              },
              // Callback for each flip of the hours digit.
              onHourFlip: (timeEvent) {
                print("Hour flipped: $timeEvent");
              },
              // Callback for AM/PM flip (not used in countdown mode).
              onAmPmFlip: (timeEvent) {
                print("AM/PM flipped: $timeEvent");
              },
            ),
            SizedBox(height: 20), // Spacer between the timer and the status text.
            // Display the current status below the timer.
            Text(
              _status,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
