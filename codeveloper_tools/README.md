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
  codeveloper_tools: ^0.0.23
```

## YouTube Channel

This is the official YouTube page for all tutorials and explanations related to Codeveloper Tools.

https://www.youtube.com/@KS_ABBAS






# Video Documentation

## MyFloatingMenuButton

**MyFloatingMenuButton Explanation and How to Use It**

MyFloatingMenuButton is an innovative, draggable floating menu widget designed for Flutter apps. It provides a customizable Floating Action Button (FAB) that, when tapped or dragged, reveals a popup menu with your chosen options. This widget enhances the user experience by offering quick access to various features in a sleek, modern design.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/aEMuoiq3lkw/0.jpg)](https://youtu.be/aEMuoiq3lkw)

## Example Code

Below is an annotated example demonstrating how to integrate **MyFloatingMenuButton** into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works.

```dart
import 'package:flutter/material.dart';
// Import the package containing the floating menu widgets.
// Adjust the import path as needed.
import 'package:codeveloper_tools/codeveloper_tools.dart'; 

// Entry point of the Flutter application.
void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp provides material design elements and theme.
    return MaterialApp(
      title: 'Ecube Floating Menu Demo',
      home: const App(), // The main widget demonstrating the floating menu.
    );
  }
}

/// A list of menu options for the floating menu.
/// Each option is a pair: [label, icon].
final List options = [
  ["one", Icon(Icons.home)],
  ["two", Icon(Icons.percent)],
  ["three", Icon(Icons.person)],
];

/// App widget demonstrates the usage of MyFloatingMenuButton.
/// It overlays a draggable floating menu on a full-screen gradient background.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MyFloatingMenuButton(
      // The body defines the main content of the screen.
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          // A gradient background from deep purple to indigo.
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      // The floatingWidget is the draggable menu component.
      floatingWidget: DraggableFloatingMenu(
        itemCount: options.length, // Number of menu items.
        // Build each menu item using a custom builder.
        itemBuilder: (context, index) {
          return CMaker(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                options[index][1],      // Displays the icon.
                Text(options[index][0]), // Displays the label.
              ],
            ),
          );
        },
        menuItemHeight: 30, // Height for each individual menu item.
      ),
    );
  }
}
```

## MyFlipRotateTimer

**MyFlipRotateTimer Explanation and How to Use It**

MyFlipRotateTimer is a versatile Flutter widget that displays a timer using animated digit cards. It supports both countdown mode and current time modes (12-hour or 24-hour formats), offering smooth digit transitions with either flip or rotate animations. This widget is ideal for apps that need an engaging, dynamic time display.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/mjQVpvg4gYA/0.jpg)](https://www.youtube.com/watch?v=mjQVpvg4gYA)

## Example Code

Below is an annotated example demonstrating how to integrate MyFlipRotateTimer into your Flutter app. Each part of the code is explained to help you understand how the widget works.

```dart
import 'package:flutter/material.dart';
// Import the package containing MyFlipRotateTimer.
// Adjust the import path as necessary.
import 'package:codeveloper_tools/codeveloper_tools.dart'; 

// The main function is the entry point of the application.
void main() => runApp(const MyTimerApp());

/// MyTimerApp is the root widget of the application.
class MyTimerApp extends StatelessWidget {
  const MyTimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the application with material design.
    return MaterialApp(
      title: 'MyFlipRotateTimer Demo',
      home: const TimerDemoPage(), // TimerDemoPage demonstrates the widget.
    );
  }
}

/// TimerDemoPage is a stateful widget that shows how to use MyFlipRotateTimer.
class TimerDemoPage extends StatefulWidget {
  const TimerDemoPage({super.key});

  @override
  State<TimerDemoPage> createState() => _TimerDemoPageState();
}

class _TimerDemoPageState extends State<TimerDemoPage> {
  // This variable holds the status of the timer.
  String _status = "Timer Running...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyFlipRotateTimer Demo'), // Title in the AppBar.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // MyFlipRotateTimer widget configured in countdown mode.
            MyFlipRotateTimer(
              displayMode: DisplayMode.countdown, // Using countdown mode.
              initialDuration: const Duration(seconds: 60), // Set to 60 seconds.
              animationMode: AnimationMode.flip, // Use flip animation style.
              digitTextStyle: const TextStyle(
                fontSize: 40, // Font size for the digits.
                fontWeight: FontWeight.bold,
                color: Colors.white, // White color for the digits.
              ),
              cardWidth: 50, // Width of each digit card.
              cardHeight: 70, // Height of each digit card.
              digitAnimDuration: const Duration(milliseconds: 600), // Animation duration.
              cardDecoration: BoxDecoration(
                color: Colors.black, // Card background color.
                borderRadius: BorderRadius.circular(8), // Rounded corners.
              ),
              // Callback when countdown completes.
              onComplete: () {
                setState(() {
                  _status = "Countdown Complete!";
                });
              },
              // Callback for each second flip.
              onSecondFlip: (event) {
                print("Second flipped: $event");
              },
              // Callback for each minute flip.
              onMinuteFlip: (event) {
                print("Minute flipped: $event");
              },
              // Callback for each hour flip.
              onHourFlip: (event) {
                print("Hour flipped: $event");
              },
              // Callback for AM/PM flip (used in 12-hour mode).
              onAmPmFlip: (event) {
                print("AM/PM flipped: $event");
              },
            ),
            const SizedBox(height: 20), // Add vertical spacing.
            // Display the current status text.
            Text(
              _status,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
```




## MyCircularCountdownTimer

*MyCircularCountdownTimer Explanation and How to Use It*

MyCircularCountdownTimer is an innovative widget designed to display a smooth, animated circular countdown timer with a dynamic chain of time units—from years down to seconds. It offers customizable progress arcs, control buttons for play/pause, and real‑time callbacks to track the countdown’s status. This widget helps you build engaging countdown experiences quickly and efficiently.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/HZFUPTWccag/0.jpg)](https://www.youtube.com/watch?v=HZFUPTWccag&t=1s)

## Example Code

Below is an annotated example demonstrating how to integrate MyCircularCountdownTimer into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works.

```dart
// Import the necessary Flutter package.
import 'package:flutter/material.dart';
// Import your package containing the widget (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart'; 

// Entry point of the Flutter application.
void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the app with a title and theme.
    return MaterialApp(
      title: 'MyCircularCountdownTimer Demo',
      home: const CountdownDemo(), // CountdownDemo demonstrates the widget.
    );
  }
}

/// CountdownDemo demonstrates the usage of MyCircularCountdownTimer.
class CountdownDemo extends StatelessWidget {
  const CountdownDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Circular Countdown Timer Demo')),
      body: Center(
        child: MyCircularCountdownTimer(
          // Set your desired time units. Only nonzero values are displayed.
          years: 0,
          months: 0,
          weeks: 0,
          days: 0,
          hours: 0,
          minutes: 1,
          seconds: 30,
          // Circular progress customization.
          size: 250,
          strokeWidth: 12,
          backgroundColor: Colors.grey.shade300,
          progressColor: Colors.green,
          textStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          // Callback examples.
          onComplete: () {
            print('Countdown Complete!');
          },
          onPlay: (remainingTime) {
            print('Timer Started: $remainingTime');
          },
          onPause: (remainingTime) {
            print('Timer Paused: $remainingTime');
          },
          onChangedTime: (remainingTime) {
            print('Time changed: $remainingTime');
          },
        ),
      ),
    );
  }
}
```


## MyFlipperWidget

*MyFlipperWidget Explanation and How to Use It*

MyFlipperWidget is an innovative widget designed to perform a variety of flipping animations between two faces or continuously cycle through a list of widgets. It offers multiple flip modes—normal, bouncing, and loop—each with its unique behavior and animation logic. This widget helps you create interactive card flipping animations and dynamic widget transitions quickly and efficiently.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/8JRwOPM5B7o/0.jpg)](https://www.youtube.com/watch?v=8JRwOPM5B7o)

## Example Code

Below is an annotated example demonstrating how to integrate MyFlipperWidget into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works.

```dart
// Import the necessary Flutter package.
import 'package:flutter/material.dart';
// Import your package containing MyFlipperWidget (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart'; 

// Entry point of the Flutter application.
void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the app with a title and theme.
    return MaterialApp(
      title: 'MyFlipperWidget Demo',
      home: const FlipperDemo(), // FlipperDemo demonstrates the widget.
    );
  }
}

/// FlipperDemo demonstrates the usage of MyFlipperWidget.
class FlipperDemo extends StatelessWidget {
  const FlipperDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flipper Widget Demo')),
      body: Center(
        child: MyFlipperWidget(
          // Define the front and back faces for normal or bouncing flip modes.
          front: Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Front',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          back: Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                'Back',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          // For loop mode, provide a list of widgets (uncomment and use if needed).
          // widgetList: [
          //   Container(color: Colors.green, child: const Center(child: Text('Widget 1'))),
          //   Container(color: Colors.orange, child: const Center(child: Text('Widget 2'))),
          //   Container(color: Colors.purple, child: const Center(child: Text('Widget 3'))),
          // ],
          width: 250,
          height: 350,
          borderRadius: 16.0,
          backgroundColor: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4.0,
              offset: Offset(0, 2),
            )
          ],
          flipDuration: const Duration(milliseconds: 800),
          // Change flipType to FlipType.normal, FlipType.bouncing, or FlipType.loop as needed.
          flipType: FlipType.normal,
          bounceDelay: const Duration(milliseconds: 500),
          onFlip: (currentFace) {
            // For normal/bouncing modes: 0 means front, 1 means back.
            // For loop mode: current index.
            print('Current face index: $currentFace');
          },
          onTap: (currentFace) {
            print('Tapped on face index: $currentFace');
          },
        ),
      ),
    );
  }
}
```

## MyPopupMenu

*MyPopupMenu Explanation and How to Use It*

MyPopupMenu is an innovative widget designed to display a custom popup menu when a user long-presses on a trigger widget. It offers a fully customizable popup that supports different directions (top, bottom, left, right), various animations (fade, scale, slide, none), and overlay effects including blur and color customization. This widget helps you create engaging and dynamic popup menus that integrate seamlessly with your app's UI.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/i9tinoxARq0/0.jpg)](https://www.youtube.com/watch?v=i9tinoxARq0)

## Example Code

Below is an annotated example demonstrating how to integrate MyPopupMenu into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works.

```dart
// Import the necessary Flutter packages.
import 'package:flutter/material.dart';
// Import your package containing MyPopupMenu (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart'; 

// Entry point of the Flutter application.
void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the app with a title and theme.
    return MaterialApp(
      title: 'MyPopupMenu Demo',
      home: const PopupMenuDemo(), // PopupMenuDemo demonstrates the widget.
    );
  }
}

/// PopupMenuDemo demonstrates the usage of MyPopupMenu.
class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popup Menu Demo')),
      body: Center(
        // MyPopupMenu wraps a trigger widget that shows the popup on long press.
        child: MyPopupMenu(
          // The child widget that triggers the popup.
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.blue,
            child: const Text(
              'Long Press Me',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          // Builder that defines the popup's content.
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () => print('Settings tapped'),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () => print('Logout tapped'),
                ),
              ],
            );
          },
          // Popup appearance configuration.
          direction: PopupDirection.bottom,
          width: 220,
          height: 150,
          color: Colors.white,
          borderRadius: 12.0,
          arrowHeight: 10.0,
          arrowWidth: 20.0,
          boxShadow: const BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
          // Overlay customization: background color and blur effect.
          overlayColor: Colors.black.withOpacity(0.3),
          overlayBlur: 5.0,
          excludeChildFromBlur: true,
          // Animation customization.
          animationType: PopupAnimationType.fade,
          animationDuration: const Duration(milliseconds: 300),
          slideReverse: false,
        ),
      ),
    );
  }
}
```

## MyAutoDateDisplayer

*MyAutoDateDisplayer Explanation and How to Use It*

MyAutoDateDisplayer is an innovative widget designed to automatically display a list of dates surrounding today. It allows you to configure the number of days before and after today to show, and supports both horizontal and vertical layouts. With customizable order and styling for day names and day numbers, this widget makes it easy to create dynamic date pickers or calendar headers tailored to your app's design.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/dMTZ7aLaD-s/0.jpg)](https://www.youtube.com/watch?v=dMTZ7aLaD-s)

## Example Code

Below is an annotated example demonstrating how to integrate MyAutoDateDisplayer into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works.

```dart
// Import the necessary Flutter package.
import 'package:flutter/material.dart';
// Import your package containing MyAutoDateDisplayer (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart';
// Import intl for date formatting.
import 'package:intl/intl.dart';

// Entry point of the Flutter application.
void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the app with a title and theme.
    return MaterialApp(
      title: 'MyAutoDateDisplayer Demo',
      home: const DateDisplayerDemo(), // DateDisplayerDemo demonstrates the widget.
    );
  }
}

/// DateDisplayerDemo demonstrates the usage of MyAutoDateDisplayer.
class DateDisplayerDemo extends StatelessWidget {
  const DateDisplayerDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Date Displayer Demo')),
      body: Center(
        child: MyAutoDateDisplayer(
          // Configure the range of dates to display.
          daysBefore: 3,
          daysAfter: 10,
          // Set the orientation: horizontal (scrolls horizontally) or vertical.
          orientation: DateDisplayOrientation.horizontal,
          // For horizontal layout, define whether the day name is on top or the day number is on top.
          horizontalOrder: HorizontalDateOrder.dayNameOnTop,
          // Container styling.
          containerDecoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8.0),
          ),
          containerPadding: const EdgeInsets.all(8.0),
          containerMargin: const EdgeInsets.all(8.0),
          // Item styling.
          itemDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey),
          ),
          itemPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          itemSpacing: 8.0,
          // Text styles for day name and day number.
          dayNameTextStyle: const TextStyle(fontSize: 16, color: Colors.black),
          dayNumberTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          showDayName: true,
          showDayNumber: true,
          currentDayHighlightColor: Colors.blue,
          // Callback when a date is selected.
          onDateSelected: (selectedDate) {
            print('Selected Date: $selectedDate');
          },
          // Callback to indicate what today is.
          onTodayChanged: (today) {
            print('Today is: $today');
          },
          // Optionally, listen for changes in the selected index.
          onSelectedIndexChanged: (index) {
            print('Selected index: $index');
          },
          // Enable a selector border around the selected date.
          showSelector: true,
          selectorBorderWidth: 3.0,
          selectorBorderColor: Colors.green,
          selectorBorderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
```

## Combined Star Rating Example

*Combined Star Rating Example Explanation and How to Use It*

This example demonstrates how to combine the interactive **StarRating** widget with the read-only **StarRatingDisplay** widget. Users can tap the interactive star rating to set a rating, which is then displayed with a smooth fill animation in the read-only star rating display. This approach helps you build a complete rating interface where users can input and view ratings seamlessly.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/cVTJMPjmXe8/0.jpg)](https://www.youtube.com/watch?v=cVTJMPjmXe8&t=9s)

## Example Code

Below is an annotated example demonstrating how to integrate both StarRating and StarRatingDisplay into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widgets work together.

```dart
// Import the necessary Flutter package.
import 'package:flutter/material.dart';
// Import your package containing the custom widgets (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart';

void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the app with a title and theme.
    return MaterialApp(
      title: 'Combined Star Rating Example',
      home: const CombinedStarRatingDemo(),
    );
  }
}

/// CombinedStarRatingDemo demonstrates the usage of both StarRating and StarRatingDisplay.
class CombinedStarRatingDemo extends StatefulWidget {
  const CombinedStarRatingDemo({super.key});
  
  @override
  State<CombinedStarRatingDemo> createState() => _CombinedStarRatingDemoState();
}

class _CombinedStarRatingDemoState extends State<CombinedStarRatingDemo> {
  // Stores the current rating from the interactive widget.
  int _interactiveRating = 0;
  // Stores the rating to be displayed (can be fractional if needed).
  double _displayRating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Combined Star Rating Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Tap on the stars to rate:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            // Interactive StarRating widget.
            StarRating(
              starCount: 5,
              initialRating: _interactiveRating,
              starSize: 50.0,
              starSpacing: 8.0,
              selectedFillColor: Colors.amber,
              showSelectedBorder: true,
              selectedStrokeColor: Colors.deepOrange,
              selectedStrokeWidth: 2.0,
              unselectedStrokeColor: Colors.grey,
              unselectedStrokeWidth: 2.0,
              starEdgeStyle: StarEdgeStyle.smooth,
              // Update the rating when a star is tapped.
              onRatingChanged: (rating) {
                setState(() {
                  _interactiveRating = rating;
                  _displayRating = rating.toDouble();
                });
              },
            ),
            const SizedBox(height: 32),
            const Text(
              'Your Rating:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            // Read-only StarRatingDisplay widget that animates to the current rating.
            StarRatingDisplay(
              starCount: 5,
              rating: _displayRating,
              animationDuration: const Duration(milliseconds: 1000),
              starSize: 50.0,
              starSpacing: 8.0,
              selectedFillColor: Colors.amber,
              showSelectedBorder: true,
              selectedStrokeColor: Colors.deepOrange,
              selectedStrokeWidth: 2.0,
              unselectedStrokeColor: Colors.grey,
              unselectedStrokeWidth: 2.0,
              starEdgeShape: StarEdgeShape.smooth,
            ),
            const SizedBox(height: 16),
            Text(
              'Rating: $_interactiveRating',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
```

## StageProgressNavigator

*StageProgressNavigator Explanation and How to Use It*

StageProgressNavigator is an innovative widget designed to manage multi-page navigation with a dynamic progress indicator that shows the current stage. It supports custom page transitions (fade or slide), and lets you position the navigation bar relative to the page (top, bottom, left, or right) with customizable markers, connecting lines, and navigation controls. This widget is perfect for building guided user experiences like onboarding flows, multi-step forms, or tutorials.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/QyLez_VMPT4/0.jpg)](https://www.youtube.com/watch?v=QyLez_VMPT4)

## Example Code

Below is an annotated example demonstrating how to integrate StageProgressNavigator into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works together with your pages and navigation controls.

```dart
// Import the necessary Flutter package.
import 'package:flutter/material.dart';
// Import your package containing the StageProgressNavigator widget (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart';

void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StageProgressNavigator Demo',
      home: const StageProgressDemo(),
    );
  }
}

/// StageProgressDemo demonstrates the usage of StageProgressNavigator.
class StageProgressDemo extends StatefulWidget {
  const StageProgressDemo({super.key});
  
  @override
  State<StageProgressDemo> createState() => _StageProgressDemoState();
}

class _StageProgressDemoState extends State<StageProgressDemo> {
  // Define sample pages for demonstration.
  final List<Widget> pages = [
    Container(
      color: Colors.redAccent,
      child: const Center(
        child: Text(
          'Page 1',
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'Page 2',
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    ),
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Page 3',
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    ),
  ];
  
  int currentStage = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stage Progress Navigator')),
      body: StageProgressNavigator(
        // List of pages to display.
        pages: pages,
        // Set the overall orientation (horizontal for this demo).
        orientation: StageProgressOrientation.horizontal,
        // Choose the type of page transition (fade or slide).
        transitionType: TransitionType.fade,
        // Position the navigation bar at the bottom.
        navigationBarPosition: NavigationBarPosition.bottom,
        // Indicator customization.
        markerSize: 24.0,
        lineThickness: 4.0,
        activeColor: Colors.blue,
        inactiveColor: Colors.grey,
        indicatorAnimationDuration: const Duration(milliseconds: 300),
        // Page transition duration.
        pageTransitionDuration: const Duration(milliseconds: 300),
        // Navigation button customization.
        previousButtonText: 'Back',
        nextButtonText: 'Next',
        buttonTextStyle: const TextStyle(fontSize: 16, color: Colors.black),
        showPreviousButton: true,
        showNextButton: true,
        // Navigation bar appearance.
        navigationBarBackgroundColor: Colors.white,
        navigationBarHeight: 120.0,
        navigationBarPadding: const EdgeInsets.all(8.0),
        // Callback when the stage changes.
        onStageChanged: (stage) {
          setState(() {
            currentStage = stage;
          });
          print('Current Stage: $stage');
        },
      ),
    );
  }
}
```

## MyDottedCardViewer

*MyDottedCardViewer Explanation and How to Use It*

MyDottedCardViewer is an innovative widget designed to showcase a series of cards with a customizable dotted indicator for navigation. It supports auto-scroll options, various indicator container customizations, and overlay dots, allowing you to build engaging and interactive card viewing experiences quickly and efficiently.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/KnUcq59iDn0/0.jpg)](https://www.youtube.com/watch?v=KnUcq59iDn0)

## Example Code

Below is an annotated example demonstrating how to integrate MyDottedCardViewer into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works together with your card content and dotted indicators.

```dart
// Import the necessary Flutter package.
import 'package:flutter/material.dart';
// Import your package containing the widget (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart';

void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDottedCardViewer Demo',
      home: const DottedCardViewerDemo(),
    );
  }
}

/// DottedCardViewerDemo demonstrates the usage of MyDottedCardViewer.
class DottedCardViewerDemo extends StatelessWidget {
  const DottedCardViewerDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dotted Card Viewer')),
      body: MyDottedCardViewer(
        itemCount: 5,
        // Builder callback to construct each card.
        builder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(16),
            elevation: 4,
            child: Center(
              child: Text(
                'Card ${index + 1}',
                style: const TextStyle(fontSize: 24),
              ),
            ),
          );
        },
        // Dot Indicator Customization.
        selectedDotWidth: 14.0,
        selectedDotHeight: 14.0,
        unselectedDotWidth: 12.0,
        unselectedDotHeight: 12.0,
        selectedDotColor: Colors.blue,
        unselectedDotColor: Colors.grey,
        dotSpacing: 8.0,
        dotAnimationCurve: Curves.easeInOut,
        dotAnimationDuration: const Duration(milliseconds: 300),
        // Page Transition Customization.
        pageTransitionDuration: const Duration(milliseconds: 300),
        pageTransitionCurve: Curves.easeInOut,
        // Auto-Scroll Options.
        autoScroll: true,
        autoScrollInterval: const Duration(seconds: 3),
        autoScrollAnimationDuration: const Duration(milliseconds: 300),
        // Big Indicator Container Customization.
        bigIndicatorContainerDecoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        bigIndicatorContainerPadding: const EdgeInsets.all(8),
        bigIndicatorContainerAlignment: Alignment.center,
        // Mini Indicator Container Customization.
        miniIndicatorContainerDecoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        miniIndicatorContainerPadding: const EdgeInsets.all(10),
        miniIndicatorContainerAlignment: Alignment.center,
        miniIndicatorContainerMargin: EdgeInsets.zero,
        // Overlay Dots Options.
        overlayDots: false,
        overlayDotsAlignment: Alignment.bottomCenter,
        overlayDotsPadding: const EdgeInsets.only(bottom: 16),
        // Callback when the viewed card changes.
        onPageChanged: (index) {
          print('Current page: $index');
        },
        // Callback when a card is tapped.
        onCardPressed: (index) {
          print('Card $index pressed');
        },
      ),
    );
  }
}
```

## MyMiniOnTheRightImageViewer

*MyMiniOnTheRightImageViewer Explanation and How to Use It*

MyMiniOnTheRightImageViewer is an innovative image carousel widget designed to display a series of images with a mini navigation indicator (dots) positioned on the right. It supports customizable image display settings (using BoxFit), smooth auto-scroll options, and animated dot indicators to create a responsive and engaging user experience. This widget helps you build dynamic image viewers quickly and efficiently.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/-uAwH3x0MSI/0.jpg)](https://www.youtube.com/watch?v=-uAwH3x0MSI)

## Example Code

Below is an annotated example demonstrating how to integrate MyMiniOnTheRightImageViewer into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works together with your image data and customizations.

```dart
// Import the necessary Flutter packages.
import 'package:flutter/material.dart';
// Import your package containing MyMiniOnTheRightImageViewer (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart';
import 'dart:typed_data'; // For image data if needed.

// Entry point of the Flutter application.
void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMiniOnTheRightImageViewer Demo',
      home: const ImageViewerDemo(),
    );
  }
}

/// ImageViewerDemo demonstrates the usage of MyMiniOnTheRightImageViewer.
class ImageViewerDemo extends StatelessWidget {
  const ImageViewerDemo({super.key});
  
  // Sample list of image URLs.
  final List<String> sampleImages = const [
    'https://via.placeholder.com/400x300.png?text=Image+1',
    'https://via.placeholder.com/400x300.png?text=Image+2',
    'https://via.placeholder.com/400x300.png?text=Image+3',
    'https://via.placeholder.com/400x300.png?text=Image+4',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mini On-The-Right Image Viewer')),
      body: MyMiniOnTheRightImageViewer(
        // Provide the list of images (URLs, asset paths, or Uint8List).
        images: sampleImages,
        // Image display customization.
        imageFit: BoxFit.cover,
        viewportFraction: 0.8,
        scaleFactor: 0.8,
        // Dots indicator customization.
        showDotsIndicator: true,
        dotSize: 8.0,
        dotSpacing: 4.0,
        dotColor: Colors.grey,
        activeDotColor: Colors.blue,
        dotAnimationDuration: const Duration(milliseconds: 300),
        dotAnimationCurve: Curves.easeInOut,
        // Auto-scroll options.
        autoScroll: true,
        autoScrollInterval: const Duration(seconds: 3),
        autoScrollAnimationDuration: const Duration(milliseconds: 300),
        autoScrollCurve: Curves.easeInOut,
        // Callbacks.
        onPageChanged: (index) {
          print('Current page: $index');
        },
        onImagePressed: (index) {
          print('Image $index pressed');
        },
      ),
    );
  }
}
```

## MyDottedImageViewer

*MyDottedImageViewer Explanation and How to Use It*

MyDottedImageViewer is an innovative widget designed to display a series of images with a customizable dotted indicator for navigation. It supports images provided as asset paths, network URLs, or raw bytes (Uint8List), and offers extensive customization options for the dots indicator, page transitions, auto-scroll behavior, and container styling. This widget helps you build engaging and interactive image viewers quickly and efficiently.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/zNGNOD9PZgE/0.jpg)](https://www.youtube.com/watch?v=zNGNOD9PZgE)

## Example Code

Below is an annotated example demonstrating how to integrate MyDottedImageViewer into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works and how you can customize it to suit your needs.

```dart
// Import the necessary Flutter packages.
import 'package:flutter/material.dart';
// Import your package containing MyDottedImageViewer (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart';
import 'dart:typed_data';

void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDottedImageViewer Demo',
      home: const DottedImageViewerDemo(),
    );
  }
}

/// DottedImageViewerDemo demonstrates the usage of MyDottedImageViewer.
class DottedImageViewerDemo extends StatelessWidget {
  const DottedImageViewerDemo({super.key});
  
  // Sample list of image sources: can be asset paths, network URLs, or raw bytes.
  final List<String> sampleImages = const [
    'https://via.placeholder.com/400x300.png?text=Image+1',
    'https://via.placeholder.com/400x300.png?text=Image+2',
    'https://via.placeholder.com/400x300.png?text=Image+3',
    'https://via.placeholder.com/400x300.png?text=Image+4',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dotted Image Viewer')),
      body: MyDottedImageViewer(
        // Provide the list of images (asset paths, URLs, or Uint8List data).
        images: sampleImages,
        // Customize how images are fitted inside the viewer.
        imageFit: BoxFit.cover,
        // Dot Indicator Customization.
        selectedDotWidth: 14.0,
        selectedDotHeight: 14.0,
        unselectedDotWidth: 12.0,
        unselectedDotHeight: 12.0,
        selectedDotColor: Colors.blue,
        unselectedDotColor: Colors.grey,
        dotSpacing: 8.0,
        dotAnimationCurve: Curves.easeInOut,
        dotAnimationDuration: const Duration(milliseconds: 300),
        // Page Transition Customization.
        pageTransitionDuration: const Duration(milliseconds: 300),
        pageTransitionCurve: Curves.easeInOut,
        scrollPhysics: const BouncingScrollPhysics(),
        // Auto-Scroll Options.
        autoScroll: true,
        autoScrollInterval: const Duration(seconds: 3),
        autoScrollAnimationDuration: const Duration(milliseconds: 300),
        // Big and Mini Indicator Container Customization.
        bigIndicatorContainerDecoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        bigIndicatorContainerPadding: const EdgeInsets.all(8),
        bigIndicatorContainerAlignment: Alignment.center,
        miniIndicatorContainerDecoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        miniIndicatorContainerPadding: const EdgeInsets.all(10),
        miniIndicatorContainerAlignment: Alignment.center,
        miniIndicatorContainerMargin: EdgeInsets.zero,
        // Overlay Dots Options.
        overlayDots: false,
        overlayDotsAlignment: Alignment.bottomCenter,
        overlayDotsPadding: const EdgeInsets.only(bottom: 16),
        // Callbacks.
        onPageChanged: (index) {
          print('Current image index: $index');
        },
        onImagePressed: (index) {
          print('Image at index $index pressed');
        },
      ),
    );
  }
}
```

## SoundRecorder

*SoundRecorder Explanation and How to Use It*

SoundRecorder is an innovative widget designed to record audio with a simple tap interface. It toggles between recording and idle states, providing real-time recording progress via callbacks. Using the Flutter Sound package, SoundRecorder handles audio capture efficiently and supports full customization—from button colors and icon size to container decoration and icon color. This widget is perfect for integrating audio recording functionality into your Flutter apps with minimal setup.

We explain every widget in detail on our YouTube channel—watch our step-by-step tutorials, live demos, and get in-depth explanations directly from Codeveloper.  
Check out our channel here: [KS_ABBAS YouTube Channel](https://www.youtube.com/@KS_ABBAS).

[![Watch Video](https://img.youtube.com/vi/iNd5jF48rG8/0.jpg)](https://www.youtube.com/watch?v=iNd5jF48rG8)

## Example Code

Below is an annotated example demonstrating how to integrate SoundRecorder into your Flutter app. Each part of the code is explained with inline comments to help you understand how the widget works.

```dart
// Import the necessary Flutter packages.
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_sound/flutter_sound.dart';
// Import your package containing SoundRecorder (adjust the import path as needed).
import 'package:codeveloper_tools/codeveloper_tools.dart';

void main() => runApp(const MyApp());

/// MyApp is the root widget of the application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoundRecorder Demo',
      home: const SoundRecorderDemo(),
    );
  }
}

/// SoundRecorderDemo demonstrates the usage of the SoundRecorder widget.
class SoundRecorderDemo extends StatelessWidget {
  const SoundRecorderDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sound Recorder')),
      body: Center(
        child: SoundRecorder(
          // Customize the button appearance.
          buttonColor: Colors.blue,
          recordingColor: Colors.red,
          iconSize: 40.0,
          // Optionally customize the container wrapping the button.
          containerDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(2, 2),
              )
            ],
          ),
          containerWidth: 100,
          containerHeight: 100,
          iconColor: Colors.white,
          // Callback triggered when recording starts.
          onRecordingStart: () {
            print("Recording started");
          },
          // Callback triggered periodically during recording with the elapsed duration.
          onRecordingProgress: (duration) {
            print("Recording progress: $duration");
          },
          // Callback triggered when recording is complete.
          onRecordingComplete: (audioFile) {
            print("Recording complete. Audio file: $audioFile");
          },
        ),
      ),
    );
  }
}
```

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

