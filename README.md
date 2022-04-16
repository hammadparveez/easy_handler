# Easy Handler

## Easy and simple way to write avoid long statement

```yaml
dependencies:
  easy_handler: <latest-version>
```

### once you have loaded a package, put that whereever you want to use it.

```dart
import 'package:easy_handler/easy_handler.dart';
```

#### How to use afterBuild(cb)

```dart
  @override
  void initState() {
    super.initState();
    afterBuild( () => log("called After Build(context)") );
  }
```

#### How to use setProp(value)

```dart
style: ButtonStyle(backgroundColor: setProp(value))
```

#### That's it
