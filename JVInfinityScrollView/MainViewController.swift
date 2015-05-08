//
//  MainViewController.swift
//  JVInfinityScrollView
//
//  Created by Jean Vinge on 02/05/15.
//  Copyright (c) 2015 Jean Vinge. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let frame = CGRectMake(view.frame.origin.x, view.frame.origin.y, view.frame.size.width, view.frame.size.height / 2)
        
        let photos = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6")]
        
        let scrollView = JVInfinityScrollView(frame: frame, photos: photos)
    
        //scrollView.backgroundColor = UIColor.grayColor()
        view.addSubview(scrollView)
    }
    
}
