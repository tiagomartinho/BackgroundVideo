# BackgroundVideo

[![Version](https://img.shields.io/cocoapods/v/BackgroundVideo.svg?style=flat)](https://cocoapods.org/pods/BackgroundVideo)
[![License](https://img.shields.io/cocoapods/l/BackgroundVideo.svg?style=flat)](https://cocoapods.org/pods/BackgroundVideo)
[![Platform](https://img.shields.io/cocoapods/p/BackgroundVideo.svg?style=flat)](https://cocoapods.org/pods/BackgroundVideo)

## How to use

1) Add the video file to your project (with mp4 format)

2) Import the framework
```swift
import BackgroundVideo
```

3) Keep a reference to Player
```swift
var player: Player?
```

4) Instantiate Player when the view loads
```swift
override func viewDidLoad() {
    super.viewDidLoad()
    player = view.add(videoName: "Video.mp4", alpha: 0.5)
}
```

5) Play when the view appears
```swift
override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    player?.play()
}
```

6) Pause when the view disappears
```swift
override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    player?.pause()
}
```

7) ???

8) Profit

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

BackgroundVideo is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'BackgroundVideo'
```

## Author

Tiago Martinho, tiago@elit.software

## License

BackgroundVideo is available under the MIT license. See the LICENSE file for more info.
