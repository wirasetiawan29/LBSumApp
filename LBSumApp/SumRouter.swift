//
//  SumRouter.swift
//  LBSumApp
//
//  Created by Wira on 3/14/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class SumRouter: NSObject {

    var viewController: ViewController?
    init(withViewController: ViewController?) {
        super.init()
        self.viewController = withViewController
    }
}
