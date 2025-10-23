import 'package:flutter/material.dart';

void main() => runApp(const DraggableDemoApp());

class DraggableDemoApp extends StatelessWidget {
  const DraggableDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draggable Widget Demo',
      home: const DraggableDemoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DraggableDemoScreen extends StatefulWidget {
  const DraggableDemoScreen({super.key});

  @override
  State<DraggableDemoScreen> createState() => _DraggableDemoScreenState();
}

class _DraggableDemoScreenState extends State<DraggableDemoScreen> {
  Color targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable Widget Demo'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable<Color>(
              data: Colors.blue,
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.blue.withOpacity(0.7),
                child: const Center(child: Text('Drag me')),
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: const Center(child: Text('Dragging')),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(child: Text('Drag me')),
              ),
            ),
            const SizedBox(height: 50),
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  targetColor = color;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 150,
                  height: 150,
                  color: targetColor,
                  child: const Center(child: Text('Drop here')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

