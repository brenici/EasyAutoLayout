# Easy Auto Layout
UIKit Programmatic Constraints. Simplified!

`Swift` `iOS` `UIKit` `UIView` `NSLayoutConstraint`

This repository contains Swift extensions for the `UIView` class, providing developers with the capability to effortlessly implement programmatic view layouts and write concise constraint code.

## Features

- `pinToBounds`: Pins the current view to the bounds of another view with customizable insets.
- `pinTo`: Pins the current view to another view with customizable constraints for width, height, and positioning.
- `pinTo` (side-based): Pins the current view to a specific side (top, bottom, leading, or trailing) of another view with customizable constraints.

## Usage

To use these extensions in your project, follow these steps:

1. Copy the `UIViewExtension.swift` file into your Xcode project.
2. Use the desired extension methods on your `UIView` objects.

### Example: `pinToBounds` (using Safe Area Layout Guide)

```swift
let view1 = UIView()
let view2 = UIView()

// Pin view2 to the bounds of view1 with insets on all sides
view2.pinToBounds(of: view1, leading: 10, trailing: 10, top: 10, bottom: 10)
```

### Example: `pinTo` (relative to view)

```swift
let view1 = UIView()
let view2 = UIView()

// Pin view2 to view1 with width, height and centered positioning
view2.pinTo(view: view1, width: 200, height: 100, centerX: 0, centerY: 0)
```

### Example: `pinTo` (side-based)

```swift
let view1 = UIView()
let view2 = UIView()

// Pin view2 to the top side of view1 with 20 units spacing and match the width of view1
view2.pinTo(side: .top, of: view1, height: 200, spacing: 20)

// Pin view2 to the leading side of view1 with 20 units spacing and match the height of view1
view2.pinTo(side: .leading, of: view1, width: 200, spacing: 20)
```

## Contribution

Contributions to this repository are welcome. If you have any suggestions, improvements, or bug fixes, feel free to open a pull request.

## License

This code is available under the [MIT License](LICENSE).
