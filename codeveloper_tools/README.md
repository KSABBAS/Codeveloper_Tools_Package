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
  codeveloper_tools: ^0.0.12
```

## YouTube Channel

This is the official YouTube page for all tutorials and explanations related to Codeveloper Tools.

https://www.youtube.com/@KS_ABBAS





## MyFlipRotateTimer Widget Explained 🔄

Below is an explanation of the `MyFlipRotateTimer` widget. This widget displays a timer using animated digit cards, supporting both countdown and current time modes. It provides smooth digit transitions using either flip or rotate animations.

<!-- Using HTML to display the image -->
<!-- Using the raw GitHub URL so pub.dev can load the image -->
<img src="https://github.com/KSABBAS/Codeveloper_Tools_Package/blob/main/codeveloper_tools/images/MyFlipRotateTimer.png?raw=true "
     alt="MyFlipRotateTimer Widget"
     style="max-width:100%; padding: 4px; margin: 10px 0;" />


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
              // Callback invoked when the countdown completes.
              onComplete: () {
                setState(() {
                  _status = "Countdown Complete!";
                });
              },
              // Callback for each flip of the seconds digit.
              onSecondFlip: (timeEvent) {
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
```

# Video Documentation

## MyFlipRotateTimer
**MyFlipRotateTimer explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/mjQVpvg4gYA/0.jpg)](https://www.youtube.com/watch?v=mjQVpvg4gYA)

## MyCircularCountdownTimer
**MyCircularCountdownTimer explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/HZFUPTWccag/0.jpg)](https://www.youtube.com/watch?v=HZFUPTWccag&t=1s)

## MyTooltip
**MyTooltip explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/N-T_f8Llny4/0.jpg)](https://www.youtube.com/watch?v=N-T_f8Llny4)

## How To Use Codeveloper Tools ( MyTools )
**How To Use Codeveloper Tools ( MyTools ) explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/bajAFMjqrjM/0.jpg)](https://www.youtube.com/watch?v=bajAFMjqrjM)

## MyFlipperWidget
**MyFlipperWidget explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/8JRwOPM5B7o/0.jpg)](https://www.youtube.com/watch?v=8JRwOPM5B7o)

## MyPopupMenu
**MyPopupMenu explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/i9tinoxARq0/0.jpg)](https://www.youtube.com/watch?v=i9tinoxARq0)

## AutoDateDisplayer
**AutoDateDisplayer explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/dMTZ7aLaD-s/0.jpg)](https://www.youtube.com/watch?v=dMTZ7aLaD-s)

## StarRating
**StarRating explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/cVTJMPjmXe8/0.jpg)](https://www.youtube.com/watch?v=cVTJMPjmXe8&t=9s)

## StageProgressNavigator
**StageProgressNavigator explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/QyLez_VMPT4/0.jpg)](https://www.youtube.com/watch?v=QyLez_VMPT4)

## MyDottedCardViewer and MyMiniOnTheRightCardViewer
**MyDottedCardViewer and MyMiniOnTheRightCardViewer explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/KnUcq59iDn0/0.jpg)](https://www.youtube.com/watch?v=KnUcq59iDn0)

## MyMiniOnTheRightImageViewer
**MyMiniOnTheRightImageViewer explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/-uAwH3x0MSI/0.jpg)](https://www.youtube.com/watch?v=-uAwH3x0MSI)

## MyDottedImageViewer
**MyDottedImageViewer explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/zNGNOD9PZgE/0.jpg)](https://www.youtube.com/watch?v=zNGNOD9PZgE)

## SoundRecorder
**SoundRecorder explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/iNd5jF48rG8/0.jpg)](https://www.youtube.com/watch?v=iNd5jF48rG8)

## CustomVideoPlayer
**CustomVideoPlayer explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/EI4KzHshdiE/0.jpg)](https://www.youtube.com/watch?v=EI4KzHshdiE)

## AudioPlayerWidget
**AudioPlayerWidget explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/jKp-J2wnyus/0.jpg)](https://www.youtube.com/watch?v=jKp-J2wnyus)

## PercentageCirclePainter
**PercentageCirclePainter explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/Igx5omF-Vus/0.jpg)](https://www.youtube.com/watch?v=Igx5omF-Vus)

## WidgetListBuilder
**WidgetListBuilder explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/sybPlJAvmS0/0.jpg)](https://www.youtube.com/watch?v=sybPlJAvmS0)

## MyResponsive
**MyResponsive explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/8weZ_FZ1GMI/0.jpg)](https://www.youtube.com/watch?v=8weZ_FZ1GMI)

## ResponsiveHeight and ResponsiveWidth
**ResponsiveHeight and ResponsiveWidth explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/XdQdukCLDw8/0.jpg)](https://www.youtube.com/watch?v=XdQdukCLDw8)

## PageHeight(context) and PageWidth(context)
**PageHeight(context) and PageWidth(context) explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/8n6__hCPLug/0.jpg)](https://www.youtube.com/watch?v=8n6__hCPLug)

## ClickToOpenImageViwer
**ClickToOpenImageViwer explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/ChOfxo43HVQ/0.jpg)](https://www.youtube.com/watch?v=ChOfxo43HVQ)

## scanQRWidget
**scanQRWidget explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/36_Cwi3vk30/0.jpg)](https://www.youtube.com/watch?v=36_Cwi3vk30)

## generateQRCode
**generateQRCode explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/uqzuHbnoCNs/0.jpg)](https://www.youtube.com/watch?v=uqzuHbnoCNs)

## MyExpandingColumnWidgetSelector and MyExpandingRowWidgetSelector
**MyExpandingColumnWidgetSelector and MyExpandingRowWidgetSelector explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/iEqPO4asal8/0.jpg)](https://www.youtube.com/watch?v=iEqPO4asal8)

## MyColumnWidgetSelector and MyRowWidgetSelector part 2
**MyColumnWidgetSelector and MyRowWidgetSelector part 2 explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/-IXbtna8cbQ/0.jpg)](https://www.youtube.com/watch?v=-IXbtna8cbQ)

## MyColumnWidgetSelector and MyRowWidgetSelector
**MyColumnWidgetSelector and MyRowWidgetSelector explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/BPOjlYMWvDg/0.jpg)](https://www.youtube.com/watch?v=BPOjlYMWvDg)

## MultiRButton
**MultiRButton explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/Jr6U1hYyjeY/0.jpg)](https://www.youtube.com/watch?v=Jr6U1hYyjeY)

## MultiCBox
**MultiCBox explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/s94XVaoICMg/0.jpg)](https://www.youtube.com/watch?v=s94XVaoICMg)

## WGridBuilder
**WGridBuilder explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/qQP06gYCt2M/0.jpg)](https://www.youtube.com/watch?v=qQP06gYCt2M)

## DistributiveGView
**DistributiveGView explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/g_eoeJSTRWM/0.jpg)](https://www.youtube.com/watch?v=g_eoeJSTRWM)

## MY Button
**MY Button explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/9Bm-_1gcHK4/0.jpg)](https://www.youtube.com/watch?v=9Bm-_1gcHK4)

## TMaker
**TMaker explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/WqPksVZWFfs/0.jpg)](https://www.youtube.com/watch?v=WqPksVZWFfs)

## CMaker tool
**CMaker tool explanation and how to use it**  
[![Watch Video](https://img.youtube.com/vi/xYT5Os8H_Po/0.jpg)](https://www.youtube.com/watch?v=xYT5Os8H_Po)

