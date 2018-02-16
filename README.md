<p align="center">
  <img src="https://github.com/dingwilson/MultiPeer/raw/master/Assets/banner.png" title="MultiPeer">
</p>

[![Build Status](https://travis-ci.org/dingwilson/MultiPeer.svg?branch=master)](https://travis-ci.org/dingwilson/MultiPeer)
[![CocoaPods Version Status](https://img.shields.io/cocoapods/v/MultiPeer.svg)](https://cocoapods.org/pods/MultiPeer)
[![Carthage compatible](https://img.shields.io/badge/Carthage-Compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods](https://img.shields.io/cocoapods/dt/MultiPeer.svg)](https://cocoapods.org/pods/MultiPeer)
[![CocoaPods](https://img.shields.io/cocoapods/dm/MultiPeer.svg)](https://cocoapods.org/pods/MultiPeer)
![iOS](https://img.shields.io/badge/os-iOS-green.svg?style=flat)
![Mac](https://img.shields.io/badge/os-Mac-green.svg?style=flat)
[![Swift](https://img.shields.io/badge/Swift-4.0-orange.svg)](https://swift.org)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](http://opensource.org/licenses/MIT)

A wrapper for Apple's MultipeerConnectivity framework for offline data transmission between Apple devices. This framework makes it easy to automatically connect to multiple nearby devices and share information using either bluetooth or wifi radios.

1. [Features](#features)
2. [Integration](#integration)
    - [CocoaPods](#cocoapods)
    - [Carthage](#carthage)
    - [Swift Package Manager](#swift-package-manager)
3. [Usage](#usage)
4. [License](#license)
5. [Authors](#authors)

## Features

- [x] Supports iOS/macOS
- [x] Auto Connection
- [x] Auto Invitations/Advertising
- [x] Send/Receive data via MultipeerConnectivity Framework
- [x] Specify data types for easy handling

## Integration

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install `MultiPeer` by adding it to your `Podfile`:

```ruby
pod 'MultiPeer'
```

#### Carthage
You can use [Carthage](https://github.com/Carthage/Carthage) to install `MultiPeer` by adding it to your `Cartfile`:

```
github "dingwilson/MultiPeer"
```

#### Swift Package Manager
For [SPM](https://swift.org/package-manager/), add the following to your package dependencies:

```
.package(url: "https://github.com/dingwilson/MultiPeer.git", .upToNextMinor(from: "0.0.0"))
```

## Usage

To get started, simply initialize MultiPeer with the name of your session (`serviceType`). There are two modes of connections (advertiser and browser). To utilize both, simply use `.autoConnect()`.

```swift
MultiPeer.instance.initialize(serviceType: "demo-app")
MultiPeer.instance.autoConnect()
```

Any data transmitted by MultiPeer will always be accompanied by a numerical "type", to ensure other peers know what kind of data is being received. You can manage this by creating a `UInt32` enum, as shown below:

```swift
enum DataType: UInt32 {
    case string = 1
    case image = 2
    // ...
}
```

To send data, simply use the `.send(object: type:)` function:

```swift
MultiPeer.instance.send(object: "Hello World!", type: DataType.string.rawValue)
```

To receive data, we must conform to the `MultiPeerDelegate` protocol:

```swift
func multiPeer(didReceiveData data: Data, ofType type: UInt32) {
    if type == DataType.string.rawValue {
        let string = data.convert() as! String
        // do something with the received string
    } else if type == DataType.image.rawValue {
        let image = UIImage(data: data)
        // do something with the received UIImage
    }
}

func multiPeer(connectedDevicesChanged devices: [String]) {}
```

Congratulations! You have successfully sent data using MultiPeer! For more detailed information (including details of other functions), please see the [docs](http://wilsonding.com/MultiPeer).

## License
`MultiPeer` is released under an [MIT License](http://opensource.org/licenses/MIT). See [LICENSE](LICENSE) for details.

## Authors

- [Wilson Ding](https://github.com/dingwilson)
- [Quan Vo](https://github.com/quanvo87)

Project heavily inspired by [Apple-Signal](https://github.com/kirankunigiri/Apple-Signal).