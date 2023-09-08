```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var c1 = Colors.grey.shade900;
    var c2 = Colors.amber.withOpacity(.5);
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: c1,
        body: CustomPaint(
          size: Size(width,height),
          painter: DotPainter(
            dotColor: c2,
            dotRadius: 1,
            spacing: 30,
          ),
        ),
      ),
    );
  }
}

```
