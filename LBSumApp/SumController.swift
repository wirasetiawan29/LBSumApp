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
    let a:Int = 0
    let b:Int = 0
    let n:Int = 0
    
    init(viewController: ViewController?) {
        super.init()
        self.viewController = viewController
        interactor = SumInteractor(controller: self)
        router = SumRouter(withViewController: self.viewController)
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
        assert(n > 1)
        var array = [0, 1]
        while array.count < n {
            array.append(array[array.count - 1] + array[array.count - 2])
        }
        return array
    }
    
}
