//
//  JVInfinityScrollView.swift
//  JVInfinityScrollView
//
//  Created by Jean Vinge on 02/05/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

import UIKit

class JVInfinityScrollView: UIScrollView, UIScrollViewDelegate {
    
    init(frame: CGRect, photos: [UIImage?]) {
    
        UIScrollView(frame: frame)
        super.init(frame: frame)
        delegate = self
        pagingEnabled = true
        showsVerticalScrollIndicator = true
        contentMode = UIViewContentMode.ScaleAspectFit
        addImages(photos)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addImages(photos: [UIImage?]) {
        
        var imageView = UIImageView()
        var x:CGFloat = 0
        
        for photo in photos {
            
            imageView = UIImageView(frame: CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height))
            imageView.image = photo
            
            
            x += frame.width
            
            addSubview(imageView)
        }
        
        contentSize = CGSizeMake(imageView.frame.origin.x + imageView.frame.size.width, imageView.frame.size.height)
    }
    
//    func scrollViewDidScroll(scrollView: UIScrollView){
//        /* Gets called when user scrolls or drags */
//        scrollView.alpha = 0.50
//    }
//    
//    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
//        /* Gets called only after scrolling */
//        scrollView.alpha = 1
//    }
//    
//    func scrollViewDidEndDragging(scrollView: UIScrollView,
//        willDecelerate decelerate: Bool){
//            scrollView.alpha = 1
//    }
    
    
}
