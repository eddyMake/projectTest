//
//  ManClass.swift
//  SwiftDemo
//
//  Created by eddy on 2017/12/28.
//  Copyright © 2017年 eddy. All rights reserved.
//

import UIKit

enum EnumTest: Int{
    case ace = 1
    case bce
    case dce
    case cce
    func bDescription() -> String {
        switch self {
        case .cce:
            return ".cce"
        default:
            return ".dce"
        }
    }
}

enum EmunString{
    case a
    case manyString(String, String, String)
    case manyInt(Int, Int)
}

enum ServerResponse{
    case result(String, String)
    case failure(String)
}

class ManClass: PersonClass {
    
    var hasDD = false
    
    var height :Double = 0.0

    init(hasDD: Bool, name: String, age: Int) {
        
        self.hasDD = hasDD
        
        super.init(name: name, age: age)
        
        let ce: EnumTest = .ace
        switch ce {
        case .ace:
            print("ace---->>>>\(ce.rawValue)")
        default:
            print("无")
        }
        
        let aString = EmunString.manyString("1", "2", "3")
        switch aString {
        case let .manyString(str1, str2, str3):
            print("aString---->>>>"+str1 + str2 + str3)
        default:
            print("NSNofound")
        }
        
        if let aFunc = EnumTest(rawValue: 3) {
            print("afunc---->>>>" + aFunc.bDescription())
        }
        
        let success = ServerResponse.result("6:00 am", "8:00 pm")
        let failure = ServerResponse.failure("no find")
        
        switch failure {
        case .result(let sunrise, let sunset):
            print("success....\(sunrise)")
        case let .failure(message):
            print("failure....\(message)")
        }
    }
    
    override func personDescription() -> String{
        return "\(self.name) \(self.hasDD ? "has":"dont has") DD, age is \(self.age)"
    }
    
    var heightSetterGetter: Double{
        get {
            return height
        }
        
        set {
            height = newValue
        }
    }
}
