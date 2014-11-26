//
//  UserInfoClass.swift
//  MCSwipeTableViewCellWithSwift
//
//  Created by Nikesh Hayaran on 25/11/14.
//  Copyright (c) 2014 Nikesh Hayaran. All rights reserved.
//

import UIKit

class UserInfoClass {
    var name:String = ""
    var info:String = ""
    
    init(name:String, info:String){
        self.name = name
        self.info = info
    }
    
    func toJSON() -> String{
        return ""
    }

}
