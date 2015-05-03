//
//  JVInfinityScrollView.swift
//  JVInfinityScrollView
//
//  Created by Jean Vinge on 02/05/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

import UIKit

class JVInfinityScrollView: UIScrollView, UIScrollViewDelegate {
    
    var lastContentOffsetX:CGFloat
    var imageView:UIImageView?
    
    init(frame: CGRect, photos: [UIImage?]) {
    
        lastContentOffsetX = 0
        UIScrollView(frame: frame)
        super.init(frame: frame)
        delegate = self
        pagingEnabled = true
        showsHorizontalScrollIndicator = false
        contentMode = UIViewContentMode.ScaleAspectFit
        addImages(photos)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addImages(photos: [UIImage?]) {
        
        var x:CGFloat = 0
        
        for photo in photos {
            
            imageView = UIImageView(frame: CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height))
            imageView!.image = photo
            
            x += frame.width
            
            addSubview(imageView!)
        }
        
        contentSize = CGSizeMake(x, imageView!.frame.size.height)
    }
    
    func addImage() {
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView){
        /* Gets called when user scrolls or drags */
    }

    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
        /* Gets called only after scrolling */
        
        println("content offset x = \(scrollView.contentOffset.x)")
        
        if (lastContentOffsetX < scrollView.contentOffset.x) {
            
            println("moving >>>>>>>>")
        } else if (lastContentOffsetX == scrollView.contentOffset.x) {
            
            println("im in zero")
        } else {
            
            println("moving <<<<<<<<")
        }
        
        lastContentOffsetX = scrollView.contentOffset.x

    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool){
    }
    
    
}
