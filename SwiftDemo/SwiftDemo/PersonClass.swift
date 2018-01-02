//
//  PersonClass.swift
//  SwiftDemo
//
//  Created by eddy on 2017/12/28.
//  Copyright © 2017年 eddy. All rights reserved.
//

import UIKit

class PersonClass: NSObject {
    
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func personDescription() -> String {
        return "\(self.name) age is \(self.age)"
    }
    
}
