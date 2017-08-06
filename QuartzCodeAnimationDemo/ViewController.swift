//
//  ViewController.swift
//  QuartzCodeAnimationDemo
//
//  Created by young on 2017/8/6.
//  Copyright © 2017年 Young. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var customeView: CustomView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton.init(frame: CGRect(x: 135, y: 50, width: 100, height: 200))
        button.setTitle("Start", for: UIControlState.normal)
        button.setTitleColor(UIColor.red, for: UIControlState.normal)
        button.addTarget(self, action: #selector(tapStartBtn), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
        
        customeView = CustomView.init(frame: CGRect(x: 80, y: 150, width: 500, height: 500))
        self.view.addSubview(customeView!);
        
    }
    
    @objc func tapStartBtn(bt: UIButton) {
        customeView?.addAnimationAnimation(completionBlock: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

