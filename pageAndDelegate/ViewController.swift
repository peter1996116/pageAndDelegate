//
//  ViewController.swift
//  pageAndDelegate
//
//  Created by 金陳廷 on 2019/6/12.
//  Copyright © 2019 notu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate  {
   
  
    @IBOutlet weak var scroller: UIScrollView!
    
    @IBOutlet weak var stack: UIStackView!
    
    @IBOutlet weak var pagings: UIPageControl!
    var pages = 0
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView)  {
        pages = Int(scroller.contentOffset.x / scroller.frame.size.width)
        
        pagings.currentPage = pages
       
      
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scroller.delegate=self;
        pagings.numberOfPages=Int(stack.frame.size.width/scroller.frame.size.width)
       
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        
        
        return scroller.subviews.first
        
    }
    
}

