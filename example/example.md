```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var c1 = Colors.grey.shade900;
    var c2 = Colors.amber.withOpacity(.5);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: c1,
        body: CustomPaint(
          size: Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height /
                2, // you can remove " /2 " to cover the whole screen
          ),
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
``
```
