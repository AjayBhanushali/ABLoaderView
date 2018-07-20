# ABLoaderView
> ABLoaderView is an amazing framework to add gradient loaders your views in the app.

[![Swift Version][swift-image]][swift-url]
[![Build Status][travis-image]][travis-url]
[![License][license-image]][license-url]

 Make your app look trendy and smart using this loader.

<a href="https://imgflip.com/gif/2edirs"><img src="https://i.imgflip.com/2edirs.gif"/></a>

## Features

- [x] Layer based designing - Hence no need to worry about the size at run time 
- [x] Smart Shining - Add shining(loading) effect to all the subviews of a view.  

## Requirements

- iOS 11.0+
- Xcode 9.0
- Swift 3.0+

## Installation

#### CocoaPods
You can use [CocoaPods](https://cocoapods.org/pods/ABLoaderView) to install `ABGaugeViewKit` by adding it to your `Podfile`:

```ruby
platform :ios, '11.0'
use_frameworks!
pod 'ABLoaderView'
```
## Usage example

```swift
import ABLoaderView

// Add shining loader to your any view for e.g. myImageView
ABLoader().startShining(myImageView)

// To remove shing effect
ABLoader().stopShining(myImageView)

// For e.g. if your viewObject has 3 subviews, it will apply shining on all the subviews.
ABLoader().startSmartShining(viewObject)

// To remove shining effect just use the follwing line.
ABLoader().stopSmartShining(cell.childView)
```

## Contribute

We would love you for the contribution to **ABLoaderView**, check the ``LICENSE`` file for more info.

## Meta

Ajay Bhanushali – [LinkedIn](https://www.linkedin.com/in/ajaybhanushali/) – ajayrbhanushali@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[GitHub](https://github.com/AjayBhanushali)

[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
