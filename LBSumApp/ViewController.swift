//
//  ViewController.swift
//  LBSumApp
//
//  Created by Wira on 3/14/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var controller: SumController?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpData()
        setUpUI()
    }
    
    func setUpData() {
        controller = SumController.init(viewController: self)
    }
    
    func setUpUI() {
        
    }

}

