//
//  HomeViewController.swift
//  SlideViewControllerTest
//
//  Created by nao on 2015/09/10.
//  Copyright (c) 2015年 nao. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellowColor()
    }
    
    @IBAction func showMenu(sender: AnyObject) {
        self.frostedViewController.presentMenuViewController()
    }
    
}
