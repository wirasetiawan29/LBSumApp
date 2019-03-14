//
//  SumInteractor.swift
//  LBSumApp
//
//  Created by Wira on 3/14/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class SumInteractor: NSObject {
    
    var controller: SumController?
    init(controller: SumController?) {
        super.init()
        self.controller = controller
    }

}
