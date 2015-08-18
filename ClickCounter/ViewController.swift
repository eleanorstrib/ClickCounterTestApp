//
//  ViewController.swift
//  ClickCounter
//
//  Created by Eleanor Stribling on 8/12/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        var label = UILabel()
        label.frame = CGRectMake(175,150,60,60)
        label.textColor = UIColor.whiteColor()
        label.font = UIFont.systemFontOfSize(50)
        label.text = "0"
        
        self.view.addSubview(label)
        self.view.backgroundColor = UIColor.blackColor()
        
        //view controller sets label's text
        self.label = label
        
        // up button
        var upButton = UIButton()
        upButton.frame = CGRectMake(95,250,100,100)
        upButton.setTitle("+ add", forState: .Normal)
        upButton.setTitleColor(UIColor.greenColor(), forState: .Normal)
        self.view.addSubview(upButton)
        
        // down button
        var downButton = UIButton()
        downButton.frame = CGRectMake(175,250,100,100)
        downButton.setTitle("- subtract", forState: .Normal)
        downButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(downButton)
        
        //connect the method to the button -- tried to trigger multiple actions per line, no luck
        upButton.addTarget(self, action:"incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        upButton.addTarget(self, action: "toggleBG", forControlEvents: UIControlEvents.TouchUpInside)
        downButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        downButton.addTarget(self, action: "toggleBG", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func incrementCount() {
        self.count++
        //outlet to label
        self.label.text="\(self.count)"
    }
    
    func decrementCount() {
        self.count--
        //outlet to label
        self.label.text="\(self.count)"
    }
    
    func toggleBG () {
        self.count % 2 == 0 ? (self.view.backgroundColor = UIColor.blackColor()) : (self.view.backgroundColor = UIColor.grayColor())
    }
    
}

