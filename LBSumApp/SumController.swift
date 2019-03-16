//
//  SumController.swift
//  LBSumApp
//
//  Created by Wira on 3/14/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class SumController: NSObject {
    
    var viewController: ViewController?
    var router: SumRouter?
    var interactor: SumInteractor?
    var a:Int = 0
    var n:Int = 0
    var temp:Int = 0
    var mode:Int = 0
    var firstLoad:Bool = true
    
    init(viewController: ViewController?) {
        super.init()
        self.viewController = viewController
        interactor = SumInteractor(controller: self)
        router = SumRouter(withViewController: self.viewController)
    }
    
    func resetValue(){
        a = 0
        n = 0
        temp = 0
        firstLoad = true
        self.viewController?.totalLabel.text = "0"
    }
    
    func configureInputValue(value:String) {
        if value == "X" {
            resetValue()
        } else if firstLoad {
            temp = Int(value)!
            n = Int(value)!
            firstLoad = false
        } else {
            a = Int(value)!
            n = Int(value)!
        }
        
        switch mode {
        case 1:
            viewController!.totalLabel.text =  "\(sum(a: a, b: temp))"
            temp = sum(a: a, b: temp)
        case 2:
            viewController!.totalLabel.text =  "\(multiple(a: temp, b: a))"
            let last = multiple(a: temp, b: a)
            if last != 0 {
                temp = last
            }
        case 3:
            viewController!.totalLabel.text =  "\(prime(n: n))"
        case 4:
            if n > 1 {
                viewController!.totalLabel.text =  "\(fibonacci(n: n))"
            } else {
                resetValue()
            }
        default:
            viewController!.totalLabel.text =  "\(sum(a: a, b: temp))"
        }
    }

    func sum(a:Int, b:Int) -> Int {
        return a+b
    }
    
    func multiple(a:Int, b:Int) -> Int {
        return a*b;
    }
    
    func prime(n:Int) -> [Int]{
        let data:NSMutableArray = [];
        var index:Int = 2
        while data.count < n {
            if index == 2 {
                data.add(index)
            } else if index % 2 != 0 {
                data.add(index)
            }
            
            index += 1
        }
        return data as! [Int]
    }
    
    func fibonacci(n: Int) -> [Int] {
        if n < 1 {
            return []
        } else {
            assert(n > 1)
            var array = [0, 1]
            while array.count < n {
                array.append(array[array.count - 1] + array[array.count - 2])
            }
            return array
        }
        
    }
    
    //MARK: private function
    func greenColor() -> UIColor {
        return UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0)
    }
    
    func plusButtonIsActive(isActive:Bool) {
        if isActive {
            viewController!.plusButton.backgroundColor = greenColor()
            viewController!.plusButton.setTitleColor(UIColor.white, for: .normal)
            multipleButtonIsActive(isActive: false)
            primeButtonIsActive(isActive: false)
            fibButtonIsActive(isActive: false)
        } else {
            viewController!.plusButton.backgroundColor = UIColor.white
            viewController!.plusButton.setTitleColor(greenColor(), for: .normal)
        }
    }
    
    func multipleButtonIsActive(isActive:Bool) {
        if isActive {
            viewController!.multipleButton.backgroundColor = greenColor()
            viewController!.multipleButton.setTitleColor(UIColor.white, for: .normal)
            plusButtonIsActive(isActive: false)
            primeButtonIsActive(isActive: false)
            fibButtonIsActive(isActive: false)
        } else {
            viewController!.multipleButton.backgroundColor = UIColor.white
            viewController!.multipleButton.setTitleColor(greenColor(), for: .normal)
        }
    }
    
    func primeButtonIsActive(isActive:Bool) {
        if isActive {
            viewController!.primeButton.backgroundColor = greenColor()
            viewController!.primeButton.setTitleColor(UIColor.white, for: .normal)
            plusButtonIsActive(isActive: false)
            multipleButtonIsActive(isActive: false)
            fibButtonIsActive(isActive: false)
        } else {
            viewController!.primeButton.backgroundColor = UIColor.white
            viewController!.primeButton.setTitleColor(greenColor(), for: .normal)
        }
    }
    
    func fibButtonIsActive(isActive:Bool) {
        if isActive {
            viewController!.fibButton.backgroundColor = greenColor()
            viewController!.fibButton.setTitleColor(UIColor.white, for: .normal)
            plusButtonIsActive(isActive: false)
            multipleButtonIsActive(isActive: false)
            primeButtonIsActive(isActive: false)
        } else {
            viewController!.fibButton.backgroundColor = UIColor.white
            viewController!.fibButton.setTitleColor(greenColor(), for: .normal)
        }
    }
    
    func onSelectMode(onMode:Int) {
        mode = onMode
        switch mode {
        case 1:
            temp = a
            firstLoad = true
            plusButtonIsActive(isActive: true)
        case 2:
            temp = a
            firstLoad = true
            multipleButtonIsActive(isActive: true)
        case 3:
            temp = a
            firstLoad = true
            primeButtonIsActive(isActive: true)
        case 4:
            temp = a
            firstLoad = true
            fibButtonIsActive(isActive: true)
        default:
            onSelectMode(onMode: 1)
        }
    }
    
}
