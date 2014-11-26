//
//  CustomCell.swift
//  MCSwipeTableViewCellWithSwift
//
//  Created by Nikesh Hayaran on 25/11/14.
//  Copyright (c) 2014 Nikesh Hayaran. All rights reserved.
//

import UIKit

class CustomCell: MCSwipeTableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detail: UILabel!
    

    func setCellContent(userName:String, userDetail:String) -> (){
        self.name.text = userName
        self.detail.text = userDetail
    }
    
}
