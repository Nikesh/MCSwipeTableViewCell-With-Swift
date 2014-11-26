//
//  ViewController.swift
//  MCSwipeTableViewCellWithSwift
//
//  Created by Nikesh Hayaran on 25/11/14.
//  Copyright (c) 2014 Nikesh Hayaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var userDataCollection = [UserInfoClass]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var user1 = UserInfoClass(name: "Nikesh Hayaran", info: "nikeshhayaran@gmail.com")
        var user2 = UserInfoClass(name: "John Carten", info: "johncarten007@yahoo.com")
        
        userDataCollection.append(user1)
        userDataCollection.append(user2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return userDataCollection.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        var cell:CustomCell = tableView.dequeueReusableCellWithIdentifier("Cell") as CustomCell
        
        let userInfo = userDataCollection[indexPath.row]
        
        cell.setCellContent(userInfo.name, userDetail: userInfo.info)
        self.configureCell(cell, indexPath: indexPath)
        
        return cell
        
    }
    
    func configureCell(cell: MCSwipeTableViewCell, indexPath: NSIndexPath) {
        
        var crossViewImage =  UIImage(named: "cross.png")
        var crossView = UIImageView(image: crossViewImage)
        
        
        
        
        cell.setSwipeGestureWithView(crossView, color: UIColor.redColor(), mode: MCSwipeTableViewCellMode.Switch, state:MCSwipeTableViewCellState.State2, completionBlock: { cell, state, mode in
            NSLog("Did swipe \"Cross\" cell");
            return ()
        });
        
        var checkViewImage =  UIImage(named: "check.png")
        var checkView = UIImageView(image: checkViewImage)
        
        cell.setSwipeGestureWithView(checkView, color: UIColor.purpleColor(), mode: MCSwipeTableViewCellMode.Switch, state:MCSwipeTableViewCellState.State1, completionBlock: { cell, state, mode in
            NSLog("Did swipe \"Check mark\" cell");
            return ()
        });
        
        var clockViewImage =  UIImage(named: "clock.png")
        var clockView = UIImageView(image: clockViewImage)
        
        cell.setSwipeGestureWithView(clockView, color: UIColor.yellowColor(), mode: MCSwipeTableViewCellMode.Switch, state:MCSwipeTableViewCellState.State3, completionBlock: { cell, state, mode in
            NSLog("Did swipe \"Clock View\" cell");
            return ()
        });
        
        
        var listViewImage =  UIImage(named: "list.png")
        var listView = UIImageView(image: listViewImage)
        
        cell.setSwipeGestureWithView(listView, color: UIColor.orangeColor(), mode: MCSwipeTableViewCellMode.Switch, state:MCSwipeTableViewCellState.State4, completionBlock: { cell, state, mode in
            NSLog("Did swipe \"list View\" cell");
            return ()
        });
        
    }

    
}

