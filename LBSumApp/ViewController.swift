//
//  ViewController.swift
//  LBSumApp
//
//  Created by Wira on 3/14/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var multipleButton: UIButton!
    @IBOutlet weak var primeButton: UIButton!
    @IBOutlet weak var fibButton: UIButton!
    
    
    var controller: SumController?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpData()
        setUpUI()
    }
    
    func setUpData() {
        controller = SumController.init(viewController: self)
        controller?.firstLoad = true
        controller!.onSelectMode(onMode: 1)
    }
    
    func setUpUI() {
        
    }
    
    // MARK: action function
    @IBAction func onClickPlus(_ sender: Any) {
        controller!.resetValue()
        controller!.onSelectMode(onMode: 1)
    }
    
    @IBAction func onClickMultiple(_ sender: Any) {
        controller!.resetValue()
        controller!.onSelectMode(onMode: 2)
        
    }
    
    @IBAction func onClickPrime(_ sender: Any) {
        controller!.resetValue()
        controller!.onSelectMode(onMode: 3)
        
    }
    
    @IBAction func onClickFib(_ sender: Any) {
        controller!.resetValue()
        controller!.onSelectMode(onMode: 4)
        
    }
    
    @IBAction func onClickNewCharacter(_ sender: Any) {
        controller?.configureInputValue(value: ((sender as! UIButton).titleLabel?.text)!)
    }
}

