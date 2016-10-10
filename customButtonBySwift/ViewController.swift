//
//  ViewController.swift
//  customButtonBySwift
//
//  Created by SmartestEE on 16/9/6.
//  Copyright © 2016年 SmartestEE. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor=UIColor.orangeColor()
        let custom = customButton();
        custom.frame=CGRectMake(0, 0, WIDTH, HEIGHT)
        //custom.backgroundColor=UIColor.redColor()
        custom.addTarget(self, action:"btnClick", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(custom)
        
    }
    
    func btnClick(){
        print("点我啊")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

