# Easy Handler

Most of the time we use flutter built-in long statement which becomes annoying after some time, here's an example.

```dart
1) WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
  // Code Implementation.....
});
2) style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.purple),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(10),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),

```

Just to avoid those above long statement, you may use shorter syntax.

```dart
//called when layout has been rendered
1) afterBuild(() {})
// value  (MaterialStateproperty)
2) setProp(value);
```

## Installation

#### Step 1:

```yaml
dependencies:
  easy_handler: <latest-version>
```

#### Step 2:

```dart
import 'package:easy_handler/easy_handler.dart';
```

That's it

## Usage

```dart
  @override
  void initState() {
    super.initState();
    afterBuild( () => log("called After Build(context)") );
  }
```

#### How to use setProp(value)

```dart
style: ButtonStyle(
              backgroundColor: setProp(Colors.purple),
              foregroundColor: setProp(Colors.white),
              elevation: setProp(10),
              padding: setProp(EdgeInsets.all(10)),
            )),
```

#### More shoter syntax will be added, Feel free to be a contributor.
