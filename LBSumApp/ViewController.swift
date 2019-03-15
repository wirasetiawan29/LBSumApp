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
    var a:Int = 0
    var n:Int = 0
    var temp:Int = 0
    var mode:Int = 0
    var firstLoad:Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpData()
        setUpUI()
    }
    
    func setUpData() {
        controller = SumController.init(viewController: self)
        firstLoad = true
        mode = 1
        plusButton.backgroundColor = UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        plusButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    func setUpUI() {
        
    }
    
    // MARK: private function
    func resetValue(){
        a = 0
        n = 0
        temp = 0
        firstLoad = true
        self.totalLabel.text = "0"
    }
    
    // MARK: action function
    @IBAction func onClickPlus(_ sender: Any) {
        resetValue()
        mode = 1
        temp = a
        firstLoad = true
        plusButton.backgroundColor = UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        plusButton.setTitleColor(UIColor.white, for: .normal)
        multipleButton.backgroundColor = UIColor.white
        multipleButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        primeButton.backgroundColor = UIColor.white
        primeButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        fibButton.backgroundColor = UIColor.white
        fibButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
    }
    
    @IBAction func onClickMultiple(_ sender: Any) {
        resetValue()
        mode = 2
        temp = a
        firstLoad = true
        plusButton.backgroundColor = UIColor.white
        plusButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        multipleButton.backgroundColor = UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        multipleButton.setTitleColor(UIColor.white, for: .normal)
        primeButton.backgroundColor = UIColor.white
        primeButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        fibButton.backgroundColor = UIColor.white
        fibButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
    }
    
    @IBAction func onClickPrime(_ sender: Any) {
        resetValue()
        mode = 3
        temp = a
        firstLoad = true
        plusButton.backgroundColor = UIColor.white
        plusButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        multipleButton.backgroundColor = UIColor.white
        multipleButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        primeButton.backgroundColor = UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        primeButton.setTitleColor(UIColor.white, for: .normal)
        fibButton.backgroundColor = UIColor.white
        fibButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
    }
    
    @IBAction func onClickFib(_ sender: Any) {
        resetValue()
        mode = 4
        temp = a
        firstLoad = true
        plusButton.backgroundColor = UIColor.white
        plusButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        multipleButton.backgroundColor = UIColor.white
        multipleButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        primeButton.backgroundColor = UIColor.white
        primeButton.setTitleColor(UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0), for: .normal)
        fibButton.backgroundColor = UIColor.init(red: 132.0/255.0, green: 220.0/255.0, blue: 198.0/255.0, alpha: 1.0)
        fibButton.setTitleColor(UIColor.white, for: .normal)
    }
    
    @IBAction func onClickNewCharacter(_ sender: Any) {
        let button: UIButton! = (sender as! UIButton)
        
        let value = (button?.titleLabel?.text)!
        
        if value == "x" {
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
            self.totalLabel.text =  "\(controller!.sum(a: a, b: temp))"
           temp = controller!.sum(a: a, b: temp)
        case 2:
            self.totalLabel.text =  "\(controller!.multiple(a: temp, b: a))"
            let last = controller!.multiple(a: temp, b: a)
            if last != 0 {
                temp = last
            }
        case 3:
            self.totalLabel.text =  "\(controller!.prime(n: n))"
        case 4:
            if n > 1 {
                self.totalLabel.text =  "\(controller!.fibonacci(n: n))"
            } else {
                resetValue()
            }
        default:
            self.totalLabel.text =  "\(controller!.sum(a: a, b: temp))"
        }
        
    }
}

