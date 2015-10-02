//
//  JVInfinityScrollView.swift
//  JVInfinityScrollView
//
//  Created by Jean Vinge on 02/05/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

import UIKit

class JVInfinityScrollView: UIScrollView, UIScrollViewDelegate {
    
    /// This var get the last ContentOffset when UIScrollView moves
    var lastContentOffsetX = CGFloat()
    /// This var get the end of the Content, get the last photo
    var endContentOffSet = CGFloat()
    
    init(frame: CGRect, photos: [UIImage?]) {
    
        super.init(frame: frame)
        delegate = self
        pagingEnabled = true
        showsHorizontalScrollIndicator = false
        contentMode = UIViewContentMode.ScaleAspectFit
        addImages(photos)
        
        // it makes the magic in the scrollView.. we need to set the last - 1 photo because we will create the same photo in the first index so it will make the effect of infinity scroll =)
        scrollRectToVisible(CGRectMake(endContentOffSet, 0, frame.width, frame.height), animated: false)
        
    }

    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    func addImages(photos: [UIImage?]) {
        
        var imageViewPositionX = CGFloat()
        
        // here we set the last image on beginning of the scrollview content
        var imageView = UIImageView(frame: CGRectMake(imageViewPositionX, frame.origin.y, frame.size.width, frame.size.height))
        imageView.image = photos.last!
        imageViewPositionX += frame.width
        addSubview(imageView)
        
        for photo in photos {
        
            imageView = UIImageView(frame: CGRectMake(imageViewPositionX, frame.origin.y, frame.size.width, frame.size.height))
            imageView.image = photo
            imageViewPositionX += frame.width
            addSubview(imageView)
        }

        // get the context size total
        endContentOffSet = imageViewPositionX
        
        // add the first image at the end of the scrollview content to make the trick
        imageView = UIImageView(frame: CGRectMake(imageViewPositionX, frame.origin.y, frame.size.width, frame.size.height))
        imageView.image = photos.first!
        imageViewPositionX += frame.width
        addSubview(imageView)
        contentSize = CGSizeMake(imageViewPositionX, imageView.frame.size.height)
    }

    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        /* Gets called only after scrolling */
        
        print("ContentOffset.x = \(scrollView.contentOffset.x)")
        
        /**
        *  This if makes the scrollview moves to the first photo in the array, in fact it is the second photo in the content..
        */
        if (scrollView.contentOffset.x == endContentOffSet) {
            
            scrollRectToVisible(CGRectMake(frame.width, 0, frame.width, frame.height), animated: false)
        }
        
        /**
        *  this if verify if the contentOffset is in the begining of the content, if its true, and i scroll <<<<<, the scrollview will be set to the last - 1 photo in my content, that in fact is the last photo on my array of photos =)
        */
        if (scrollView.contentOffset.x == 0) {
            
            scrollRectToVisible(CGRectMake(endContentOffSet - frame.width, 0, frame.width, frame.height), animated: false)
        }
        
        /**
        *  See where user is scrolling
        */
        if (lastContentOffsetX < scrollView.contentOffset.x) {
            
            print("Scrolling >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>")
            
        } else {
            
            print("Scrolling <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<")
            
        }
        
        lastContentOffsetX = scrollView.contentOffset.x
    }
}
