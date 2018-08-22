//
//  ViewController.swift
//  SLHomeModule
//
//  Created by Lei Shi on 08/22/2018.
//  Copyright (c) 2018 Lei Shi. All rights reserved.
//

import UIKit
import SLHomeModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = EdgeInsetLabel()
        label.leftTextInset = 16
        
        let shadowView = UIView()
        shadowView.addCustomShadow()
        shadowView.addCustomGradient()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

