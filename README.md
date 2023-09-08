# Pattern Background Package

## Example Image
![Image](https://live.staticflickr.com/65535/53171133372_040a686652_h.jpg)

---
---
## How to use
1.__Use it to cover the screen__
```dart
    CustomPaint(
          size: Size(width,height),
          painter: DotPainter(
            dotColor: dotColor,
            dotRadius: 1,
            spacing: 30,
          ),
        ),
```
2.__Use it to cover part of screem__
```dart
    CustomPaint(
          size: Size(width / 4,height / 2),
          painter: DotPainter(
            dotColor: dotColor,
            dotRadius: 1,
            spacing: 30,
          ),
        ),
```
3. __Change the painter shape to a plus sign__

```dart
    CustomPaint(
          size: Size(width / 4,height / 2),
          painter: PlusSignPainter(
            color = Colors.black,
            strokeWidth = 2.0,
            gapSize = 10.0,
            crossSize = 20.0,
          ),
        ),
```