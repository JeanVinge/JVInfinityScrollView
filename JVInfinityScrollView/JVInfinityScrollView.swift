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
    var endContentOffSet:CGFloat
    
    init(frame: CGRect, photos: [UIImage?]) {
    
        lastContentOffsetX = 0
        endContentOffSet = 0
        UIScrollView(frame: frame)
        super.init(frame: frame)
        delegate = self
        pagingEnabled = true
        showsHorizontalScrollIndicator = false
        contentMode = UIViewContentMode.ScaleAspectFit
        addImages(photos)
        
        scrollRectToVisible(CGRectMake(endContentOffSet - frame.width, 0, frame.width, frame.height), animated: false)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addImages(photos: [UIImage?]) {
        
        var x:CGFloat = 0
        
        for photo in photos {
            
            imageView = UIImageView(frame: CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height))
            
            
            if (x == 0) {
    
                imageView!.image = photos.last!
                x += frame.width
                addSubview(imageView!)
                
                imageView = UIImageView(frame: CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height))
                addSubview(imageView!)
            }

            imageView!.image = photo
            
            
            x += frame.width
            
            addSubview(imageView!)
        }

        endContentOffSet = x
        
        imageView = UIImageView(frame: CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height))
        imageView!.image = photos.first!
        
        x += frame.width
        addSubview(imageView!)
        contentSize = CGSizeMake(x, imageView!.frame.size.height)
    }

    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
        /* Gets called only after scrolling */
        
        println("content offset x = \(scrollView.contentOffset.x)")
        
        if (lastContentOffsetX < scrollView.contentOffset.x) {
            
            println("moving >>>>>>>>")
            
            if (scrollView.contentOffset.x == endContentOffSet) {
                
                scrollRectToVisible(CGRectMake(frame.width, 0, frame.width, frame.height), animated: false)
            }
            
        } else {
            
            println("moving <<<<<<<<")
            
            if (scrollView.contentOffset.x == 0) {
                
                scrollRectToVisible(CGRectMake(endContentOffSet - frame.width, 0, frame.width, frame.height), animated: false)
            }
        }
        
        lastContentOffsetX = scrollView.contentOffset.x

    }
}
