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
    
    
    var controller: SumController?
    var a:Int = 0
    var n:Int = 0
    var temp:Int = 0

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
    
    // MARK: action function
    @IBAction func onClickPlus(_ sender: Any) {
        self.totalLabel.text =  "\(controller!.sum(a: a, b: temp))"
    }
    
    @IBAction func onClickMultiple(_ sender: Any) {
        self.totalLabel.text =  "\(controller!.multiple(a: a, b: temp))"
    }
    
    @IBAction func onClickPrime(_ sender: Any) {
        self.totalLabel.text =  "\(controller!.prime(n: n))"
    }
    
    @IBAction func onClickFib(_ sender: Any) {
        self.totalLabel.text =  "\(controller!.fibonacci(n: n))"
    }
    
    @IBAction func onClickNewCharacter(_ sender: Any) {
        let button: UIButton! = (sender as! UIButton)
        
        let value = (button?.titleLabel?.text)!
        
        if value == "X" {
            a = 0
            temp = 0
        } else {
            a = Int(value)!
            temp = a
        }
        
        self.totalLabel.text =  "\(controller!.sum(a: a, b: temp))"
        
//        var button: UIButton! = (sender as! UIButton)
//        var length: Int = button?.titleLabel?.text?.count ?? 0
//        var location: Int = (totalLabel.text?.count)!
//        var range = NSRange(location: location, length: length)
    }
}

