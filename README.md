
# Pins, a lightweight Auto Layout wrapper

Pins is a lightweight `NSLayoutConstraint` wrapper that simplifies making layouts through code in UIKit apps. This package will allow you to 'pin' UIViews to each other giving you a fast and more readable way to layout your screens.

## Installation

To integrate this package into your Xcode project:

1. In Xcode, open your project.
2. Go to **File > Swift Packages > Add Package Dependency**.
3. Enter the following URL for the repository:  
```
https://github.com/abdulmedzid/Pins
```
4. Choose the latest version and add it to your target.

## Usage

To position a view you can use the `.pin()` method. Here’s how you can use it:

```swift
// Pinning a label to the center of its superview
label.pin(.center, to: self, .center)

// Pinning an image view bottom trailing corner to the label bottom trailing corner, then constraining same width and height to 32
image.pin(.bottomTrailing, to: label, .bottomTrailing)
image.pin(.widthHeight, constant: 32)

// Pinning a to the top trailing corner of the safe area layout guide, with padding of 16pts
button.pin(.topTrailing, to: self.safeAreaLayoutGuide, .topTrailing, padding: 16)

// Pinning stopButton to the bottom of its superview with padding
stopButton.pin(.bottom, to: self, .bottom, padding: Spacing.medium.padding)
```

## Available Pin Options

You can make a pin between each type if they are of same category:
* X Axis pins **leading, trailing and centerX**
  * `view1.pin(.leading, to: view2, .centerX)`
* Y Axis pins **top, bottom and centerY**
  - `view1.pin(.bottom, to: view2, .top)`
* XY Axis pins **topLeading, topTrailing, bottomLeading, bottomTrailing, center**
  - `view1.pin(.center, to: view2, .bottomLeading)`
* Dimensional pins **width, height, widthHeight** currently used only for constraining to a constant
  - `view1.pin(.width, constant: 100)`
* Fill pin **fill** used to constrain top, leading, bottom and trailing constraints to some other view
  - `view1.fill(view: view2)`
