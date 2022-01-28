<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Space Fixer

## Features

- Hide unwanted/unexpected gap between widgets

## Getting started

- `SpaceFixerHorizontalLine()`
- `SpaceFixerVerticalLine()`

How It Works

![Screenshot How It Works](images/space_fixer.ss.jpg?raw=true "Screenshot How It Works")

## Usage

```bash
flutter pub add space_fixer
```

```dart
import 'package:space_fixer/space_fixer.dart';
```

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
// ...

Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    color: Colors.black,
),
SpaceFixerHorizontalLine(
    context: context,
    overflowHeight: 3,
    overflowColor: Colors.black,
),
Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    color: Colors.black,
),

// ...
```

See: [example1.dart](example/example1.dart)

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.

This lib will most likely help to (temporarily) resolve issues like:

mysterious dividers, spacing, one pixel line between, Dividing lines occur, produces unwanted divider lines, small gap, Lines between items, background color leak, Gaps between items

- https://github.com/flutter/flutter/issues/14288
- https://github.com/flutter/flutter/issues/15035
- https://github.com/flutter/flutter/issues/29702
- https://github.com/flutter/flutter/issues/37168
- https://github.com/flutter/flutter/issues/39815
- https://github.com/flutter/flutter/issues/42927
- https://github.com/flutter/flutter/issues/44008
- https://github.com/flutter/flutter/issues/46604
- https://github.com/flutter/flutter/issues/54370
- https://github.com/flutter/flutter/issues/58462
- https://github.com/flutter/flutter/issues/58951
- https://github.com/flutter/flutter/issues/62818
