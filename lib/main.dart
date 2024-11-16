import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Examples',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Examples'),
        ),
        body: ButtonExamples(),
      ),
    );
  }
}

class ButtonExamples extends StatefulWidget {
  @override
  _ButtonExamplesState createState() => _ButtonExamplesState();
}

class _ButtonExamplesState extends State<ButtonExamples> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. Basic Elevated Button
          ElevatedButton(
            onPressed: () {
              print('Elevated Button Pressed');
            },
            child: Text('Elevated Button'),
          ),
          SizedBox(height: 10),

          // 2. Outlined Button
          OutlinedButton(
            onPressed: () {},
            child: Text('Outlined Button'),
          ),
          SizedBox(height: 10),

          // 3. Text Button
          TextButton(
            onPressed: () {},
            child: Text('Text Button'),
          ),
          SizedBox(height: 10),

          // 4. Icon Button
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              print('Icon Button Pressed');
            },
          ),
          SizedBox(height: 10),

          // 5. Floating Action Button
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),

          // 6. Custom Styled Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple, // background color
              foregroundColor: Colors.white, // text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text('Custom Button'),
          ),
          SizedBox(height: 10),

          // 7. Icon with Text Button (Elevated)
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.thumb_up),
            label: Text('Like'),
          ),
          SizedBox(height: 10),

          // 8. Gradient Background Button
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {},
              child: Text('Gradient Button'),
            ),
          ),
          SizedBox(height: 10),

          // 9. Circular Icon Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(24),
            ),
            onPressed: () {},
            child: Icon(Icons.play_arrow),
          ),
          SizedBox(height: 10),

          // 10. Button with Loading Spinner
          ElevatedButton(
            onPressed: isLoading ? null : () {
              setState(() {
                isLoading = true;
              });
              // Simulate a delay
              Future.delayed(Duration(seconds: 2), () {
                setState(() {
                  isLoading = false;
                });
              });
            },
            child: isLoading
              ? CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
              : Text('Submit'),
          ),
        ],
      ),
    );
  }
}
