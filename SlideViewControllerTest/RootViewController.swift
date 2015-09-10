//
//  RootViewController.swift
//  SlideViewControllerTest
//
//  Created by nao on 2015/09/10.
//  Copyright (c) 2015年 nao. All rights reserved.
//

import UIKit

class RootViewController: REFrostedViewController {
    override func awakeFromNib() {
        self.contentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("contentController") as! UINavigationController
        self.menuViewController = self.storyboard?.instantiateViewControllerWithIdentifier("menuController") as! UITableViewController
    }
}
