# JVInfinityScrollView

The idea is to create a similar Apple Store Banner, and learn some code in swift =)

The implementation is in progress, 
if you liked the idea, and want to help me and keep improve the code, 
you can make a push request or send me a message on twitter @jean.vinge.

## Demo

![](Examples/LiveDemo/infinityScrollView.gif)

### Example

```swift
// choose where you want to put the scrollView
let frame = CGRectMake(view.frame.origin.x, view.frame.origin.y, 
                        view.frame.size.width, view.frame.size.height / 2)

// make a array of images        
let photos = [UIImage(named: "1"), UIImage(named: "2"), 
                UIImage(named: "3"), UIImage(named: "4"), 
                UIImage(named: "5"), UIImage(named: "6")]

// init the scrollView
let scrollView = JVInfinityScrollView(frame: frame, photos: photos)

// add to the view you want.. and sucess =D
view.addSubview(scrollView)
```

# License

The MIT License (MIT)

Copyright (c) 2014 Jean Vinge

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
