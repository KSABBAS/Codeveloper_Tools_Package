# Codeveloper Tools 🚀

**Codeveloper Tools** is a lightweight Flutter package that provides a suite of custom UI widgets and helper functions to accelerate your app development. Built for simplicity and consistency, our tools help you quickly integrate polished, responsive components into your projects.

## Key Features ✨

- **Custom Navigation Bars:**  
  Pre-built widgets like `PopUps` and `Timers and Media Tools` for seamless app navigation.

- **Media & Picker Tools:**  
  Easily integrate file and image pickers along with responsive design helpers.

- **Audio & Video Components:**  
  Use our built-in audio recorder, mini audio player, and video player widgets to handle multimedia content effortlessly.

- **UI Building Blocks:**  
  Dynamic builder tools, grid layouts, and card viewers that allow you to construct complex UIs with minimal effort.

- **Utility Functions:**  
  A collection of utility functions for responsiveness, spacing, alignment, and more to ensure your app looks great on any device.

## Why Use Codeveloper Tools? 🤔

- **Accelerated Development:**  
  Save time by reusing ready-made components instead of building everything from scratch.

- **Design Consistency:**  
  Ensure a unified look and feel across your apps by using the same high-quality, customizable widgets.

- **Easy Integration:**  
  Our simple API lets you add robust functionality to your project with just a few lines of code.

## Installation 🔧

Add Codeveloper Tools to your `pubspec.yaml` file:

```yaml
dependencies:
  codeveloper_tools: ^0.0.9
```

## YouTube Channel

This is the official YouTube page for all tutorials and explanations related to Codeveloper Tools.

https://www.youtube.com/@KS_ABBAS





## MyFlipRotateTimer Widget Explained 🔄

Below is an explanation of the `MyFlipRotateTimer` widget. This widget displays a timer using animated digit cards, supporting both countdown and current time modes. It provides smooth digit transitions using either flip or rotate animations.

![MyFlipRotateTimer Widget](MyFlipRotateTimer.png)

### Key Concepts:
- **Display Modes:**  
  - `DisplayMode.countdown`: Shows a countdown timer based on an initial duration.  
  - `DisplayMode.current12h` and `DisplayMode.current24h`: Display the current time in 12-hour (with AM/PM) or 24-hour format.
  
- **Animation Modes:**  
  - `AnimationMode.flip`: Uses a flip animation (like a flip clock).  
  - `AnimationMode.rotate`: Uses a rotate animation with sliding transitions.

- **Callbacks:**  
  Callback functions such as `onSecondFlip`, `onMinuteFlip`, `onHourFlip`, and `onAmPmFlip` allow you to react to each digit change.

### Annotated Example

Below is an example of how you might integrate and use `MyFlipRotateTimer` in your Flutter app:

```dart
import 'package:flutter/material.dart';
// Import your Codeveloper Tools package (adjust the path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart';

void main() => runApp(FlipRotateTimerExampleApp());

/// The root widget of our example application.
class FlipRotateTimerExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFlipRotateTimer Example', // App title.
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FlipRotateTimerExamplePage(), // Main page of the app.
    );
  }
}

/// A stateful widget that demonstrates the usage of MyFlipRotateTimer.
class FlipRotateTimerExamplePage extends StatefulWidget {
  @override
  _FlipRotateTimerExamplePageState createState() => _FlipRotateTimerExamplePageState();
}

/// The state class for FlipRotateTimerExamplePage.
class _FlipRotateTimerExamplePageState extends State<FlipRotateTimerExamplePage> {
  // Holds the status text to display below the timer.
  String _status = "Timer Running...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flip Rotate Timer Example'), // AppBar title.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // MyFlipRotateTimer widget configured in countdown mode.
            MyFlipRotateTimer(
              displayMode: DisplayMode.countdown, // Use countdown mode.
              initialDuration: Duration(seconds: 10), // Set a 10-second countdown.
              animationMode: AnimationMode.flip, // Use flip animation.
              digitTextStyle: TextStyle(
                fontSize: 32,           // Digit font size.
                fontWeight: FontWeight.bold,
                color: Colors.white,    // White text color.
              ),
              cardWidth: 50,            // Width of each digit card.
              cardHeight: 70,           // Height of each digit card.
              digitAnimDuration: Duration(milliseconds: 800), // Duration of the flip animation.
              cardDecoration: BoxDecoration(
                color: Colors.black,    // Card background color.
                borderRadius: BorderRadius.circular(8), // Rounded corners.
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // Shadow color.
                    blurRadius: 4,         // Blur radius.
                    offset: Offset(0, 2),   // Shadow offset.
                  ),
                ],
              ),
              onComplete: () {
                // When the countdown completes, update the status.
                setState(() {
                  _status = "Countdown Complete!";
                });
              },
              onSecondFlip: (timeEvent) {
                // Print a message each time the seconds digit flips.
                print("Second flipped: $timeEvent");
              },
              onMinuteFlip: (timeEvent) {
                print("Minute flipped: $timeEvent");
              },
              onHourFlip: (timeEvent) {
                print("Hour flipped: $timeEvent");
              },
              onAmPmFlip: (timeEvent) {
                print("AM/PM flipped: $timeEvent");
              },
            ),
            SizedBox(height: 20), // Add space below the timer.
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
