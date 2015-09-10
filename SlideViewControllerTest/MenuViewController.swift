//
//  MenuViewController.swift
//  SlideViewControllerTest
//
//  Created by nao on 2015/09/10.
//  Copyright (c) 2015年 nao. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorColor = UIColor(red: 150/255.0, green: 161/255.0, blue: 177/255.0, alpha: 1.0)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.opaque = false
        self.tableView.backgroundColor = UIColor.clearColor()
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = UIColor.clearColor()
        cell.textLabel?.textColor = UIColor(red: 62/255.0, green: 68/255.0, blue: 75/255.0, alpha: 1.0)
        cell.textLabel?.font = UIFont(name: "HelveticaNeue", size: 17)
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 34))
        view.backgroundColor = UIColor(red: 167/255.0, green: 167/255.0, blue: 167/255.0, alpha: 0.6)
        
        let label = UILabel(frame: CGRectMake(10, 8, 0, 0))
        label.font = UIFont.systemFontOfSize(15)
        label.textColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.clearColor()
        
        if section == 0 {
            label.text = "Menu1"
        } else {
            label.text = "Friends Online"
        }
        
        label.sizeToFit()
        
        view.addSubview(label)
        return view
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 34
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 54
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 3
        } else {
            return 4
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellidentifier = "Cell"
        
        var cell = tableView.dequeueReusableCellWithIdentifier(cellidentifier) as! UITableViewCell?
        
        if ( cell == nil ) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellidentifier)
        }
        
        if ( indexPath.section == 0 ) {
            let titles = ["Home", "Second", "Menu1-Title3"]
            cell?.textLabel?.text = titles[indexPath.row]
        } else {
            let titles = ["Menu2-Title1", "Menu2-Title2", "Menu2-Title3", "Menu2-Title4"]
            cell?.textLabel?.text = titles[indexPath.row]
        }
        
        return cell!
    }
}
