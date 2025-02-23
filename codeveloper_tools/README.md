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





<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Show Code Example</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
      background-color: #f4f4f4;
      color: #333;
    }
    h2 {
      color: #444;
    }
    /* Styling for the code container */
    .code-container {
      display: none; /* Hidden by default */
      position: relative; /* Establish relative positioning for floating buttons */
      height: 400px;
      overflow-y: auto;
      background-color: #2d2d2d;
      color: #f8f8f2;
      border: 1px solid #444;
      border-radius: 8px;
      padding: 15px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.2);
      white-space: pre;
      font-family: Consolas, monospace;
      font-size: 14px;
    }
    /* Custom scrollbar styling for webkit browsers */
    .code-container::-webkit-scrollbar {
      width: 10px;
    }
    .code-container::-webkit-scrollbar-track {
      background: #1e1e1e;
      border-radius: 8px;
    }
    .code-container::-webkit-scrollbar-thumb {
      background: #555;
      border-radius: 8px;
    }
    /* Floating button container positioned in the top-right corner of the code container */
    .floating-buttons {
      position: absolute;
      top: 10px;
      right: 10px;
      display: flex;
      gap: 8px;
      z-index: 10;
    }
    .floating-buttons button {
      padding: 6px 12px;
      font-size: 14px;
      cursor: pointer;
      border: none;
      border-radius: 4px;
      background-color: #007acc;
      color: #fff;
      transition: background-color 0.3s ease;
    }
    .floating-buttons button:hover {
      background-color: #005ea6;
    }
    /* Style for the "Show Code" button outside the container */
    #showButton {
      padding: 8px 16px;
      font-size: 14px;
      cursor: pointer;
      border: none;
      border-radius: 4px;
      background-color: #007acc;
      color: #fff;
      transition: background-color 0.3s ease;
    }
    #showButton:hover {
      background-color: #005ea6;
    }
  </style>
</head>
<body>
  <h2>MyFlipRotateTimer Widget Code</h2>
  <!-- Show Code button -->
  <button id="showButton">Show Code</button>
  
  <!-- The code container (initially hidden) -->
  <div id="codeContainer" class="code-container">
    <!-- Floating buttons container -->
    <div class="floating-buttons">
      <button id="copyButton">Copy Code</button>
      <button id="hideButton">Hide Code</button>
    </div>
    <code id="codeBlock">
// Example code for MyFlipRotateTimer widget:

import 'package:flutter/material.dart';
import 'package:codeveloper_tools/codeveloper_tools.dart'; 

void main() => runApp(FlipRotateTimerExampleApp());

class FlipRotateTimerExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFlipRotateTimer Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FlipRotateTimerExamplePage(),
    );
  }
}

class FlipRotateTimerExamplePage extends StatefulWidget {
  @override
  _FlipRotateTimerExamplePageState createState() => _FlipRotateTimerExamplePageState();
}

class _FlipRotateTimerExamplePageState extends State<FlipRotateTimerExamplePage> {
  String _status = "Timer Running...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flip Rotate Timer Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyFlipRotateTimer(
              displayMode: DisplayMode.countdown,
              initialDuration: Duration(seconds: 10),
              animationMode: AnimationMode.flip,
              digitTextStyle: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              cardWidth: 50,
              cardHeight: 70,
              digitAnimDuration: Duration(milliseconds: 800),
              cardDecoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              onComplete: () {
                setState(() {
                  _status = "Countdown Complete!";
                });
              },
              onSecondFlip: (timeEvent) { print("Second flipped: $timeEvent"); },
              onMinuteFlip: (timeEvent) { print("Minute flipped: $timeEvent"); },
              onHourFlip: (timeEvent) { print("Hour flipped: $timeEvent"); },
              onAmPmFlip: (timeEvent) { print("AM/PM flipped: $timeEvent"); },
            ),
            SizedBox(height: 20),
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
    </code>
  </div>
  
  <script>
    // Get DOM elements
    const showButton = document.getElementById('showButton');
    const hideButton = document.getElementById('hideButton');
    const codeContainer = document.getElementById('codeContainer');
    const copyButton = document.getElementById('copyButton');
    const codeBlock = document.getElementById('codeBlock');
    
    // Show the code container when "Show Code" is clicked.
    showButton.addEventListener('click', function() {
      codeContainer.style.display = 'block';
      showButton.style.display = 'none';
    });
    
    // Hide the code container when "Hide Code" is clicked.
    hideButton.addEventListener('click', function() {
      codeContainer.style.display = 'none';
      showButton.style.display = 'inline-block';
    });
    
    // Copy code to clipboard when "Copy Code" is clicked.
    copyButton.addEventListener('click', function() {
      const textarea = document.createElement('textarea');
      textarea.value = codeBlock.innerText;
      document.body.appendChild(textarea);
      textarea.select();
      try {
        document.execCommand('copy');
        alert('Code copied to clipboard!');
      } catch (err) {
        alert('Failed to copy code.');
      }
      document.body.removeChild(textarea);
    });
  </script>
</body>
</html>
