# JVInfinityScrollView

The idea is to create a similar Apple Store Banner, and learn some code in swift =)

The implementation is in progress, 
so if you liked the idea, and want to help me, you can fork or talk with me @jean.vinge twitter.

## Usage

Its so easy to create a `JVInfinityScrollView`

### Example

```swift
// choose where you want to put the scrollView
let frame = CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, view.frame.size.height / 2)

// make a array of images        
let photos = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6")]

// init the scrollView
let scrollView = JVInfinityScrollView(frame: frame, photos: photos)

// add to the view you want.. and sucess =D
view.addSubview(scrollView)
```

## Demo
![](Examples/LiveDemo/infinityScrollView.gif)
