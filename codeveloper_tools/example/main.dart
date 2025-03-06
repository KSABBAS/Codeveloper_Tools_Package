import 'package:codeveloper_tools/MyTools/tools/Generator_Tools/FlipCard.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlipperDemoApp());

class FlipperDemoApp extends StatelessWidget {
  const FlipperDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFlipperWidget Demo',
      home: FlipperDemoPage(),
    );
  }
}

class FlipperDemoPage extends StatefulWidget {
  const FlipperDemoPage({super.key});

  @override
  _FlipperDemoPageState createState() => _FlipperDemoPageState();
}

class _FlipperDemoPageState extends State<FlipperDemoPage> {
  // This variable tracks the current face: 0 for front, 1 for back.
  int currentFace = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyFlipperWidget Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyFlipperWidget(
              front: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Front Side',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              back: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Back Side',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              width: 250,
              height: 350,
              borderRadius: 16.0,
              backgroundColor: Colors.grey[200]!,
              flipDuration: Duration(milliseconds: 800),
              flipType: FlipType.normal, // Change to FlipType.bouncing or FlipType.loop as needed.
              onFlip: (faceIndex) {
                setState(() {
                  currentFace = faceIndex;
                });
                print('Flip complete. Current face: ${faceIndex == 0 ? "Front" : "Back"}');
              },
              onTap: (faceIndex) {
                print('Card tapped. Current face: ${faceIndex == 0 ? "Front" : "Back"}');
              },
            ),
            SizedBox(height: 20),
            Text(
              'Current face: ${currentFace == 0 ? "Front" : "Back"}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
