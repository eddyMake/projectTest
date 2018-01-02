//
//  ViewController.swift
//  SwiftDemo
//
//  Created by eddy on 2017/12/28.
//  Copyright © 2017年 eddy. All rights reserved.
//

import UIKit

protocol OneProtocol{
    mutating func adjust()
}

struct UserInfo: OneProtocol {
    var name: String
    var age: Int
    var sex: Int
    
   mutating func adjust() {
        age += 10
    
        print("UserInfo")
    }
}

struct Banner {
    var url: String?
    var type: String?
    
    init(url: String, type: String) {
        self.url = url
        self.type = type
    }
}

enum OneEnum: OneProtocol {
    case a
    
    func adjust() {
        print("OneEnum")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userInfo = UserInfo(name:"王小二",age:10,sex:1)
        print(userInfo.name)
        
        let banner = Banner(url:"www",type:"1")
        print(banner.url!)
        
        return
        
        let label = "\"The width is\""
        
        let width = 100
        
        let widthLabel = label + " " + String(width);
        
        print("\(widthLabel)")
        
        
        if 1==2 {
            print("same")
        }
        
        var x = Int32.max
        x = x &+ 1
        
        print("same\(x)")
        
        let dict : NSDictionary = [:]
        
        let scores = [1,2,3,4,5,6];
        
        for score in scores {
            print("--->>>\(score)")
        }
        
        let same = ((1,3,5,7,9) > (1,3,5,7,0))
        
        print("--->>>\(same)")

        let nickName: String? = "A";
        let fullName: String = "jone"
        
        let info = "hi \(nickName ?? fullName)"
        
        print("info --- >>>> \(info)")
        
        
        
        let A = "ABCDEFGH"
        
        switch A {
        case "B":
            print("B")
        case "C":
            print("C")
        case let x where x.hasSuffix("H"):
            print("D")
        default:
            print("default")
        }
        
        
        var total = 0
        
        for i in 0..<5 {
            total += i
        }
        
        print("\(total,name(nickName: "A", fullName: "B"))")
        
        let person = personInfo("big B", on: "2011")
        print("person---->>>>>\(person)")
        
        let cal = calculate(scores: [10,7,90,100])
        print("---------")
        print(cal.sum)
        print(cal.0)
        
        print(recycle())
        
        let numbers = [1,5,6,10,100,200]
        print(isMatch(list: numbers, condition: lessThan))
        
        let map = numbers.map({number in 3 * number})
        print("map-->>>\(map)")
        
        let sort = numbers.sorted{$0 < $1}
        print("map-->>>\(sort)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func name(nickName: String, fullName: String) -> String {
        return "hello \(nickName + fullName)"
    }
    
    func personInfo(_ person: String, on birthday: String) -> String {
        return "hello \(person), today is \(birthday)"
    }
    
    func calculate(scores:[Int]) -> (max:Int, min:Int, sum:Int) {
        var max: Int! = scores.first
        var min: Int! = scores.first
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
                
            }else if score < min {
                min = score
            }
            
            sum += score
        }
        
        return (max, min, sum)
    }
    
    func recycle() -> Int {
        
        var sum = 5
        
        func add(){
            sum *= 100
        }
        
        add()
        
        return sum
    }
    
    func isMatch(list: [Int], condition:(Int) -> Bool) -> Bool {
        
        for item in list{
            if condition(item){
                
                return true
            }
        }
        
        return false
    }
    
    func lessThan(number: Int) -> Bool {
        return number < 10
    }
}


