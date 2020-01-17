//
//  ViewController.swift
//  demo-shopping
//
//  Created by jeanwei on 2020/1/15.
//  Copyright © 2020 jeanwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet var test1: [UILabel]!
    @IBOutlet weak var totalprice: UILabel!
    
    @IBOutlet var test2: [UIStepper]!
    
    let price = [80,70,100,85,90,95]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func total(){
         var sum = 0
               for (i,price) in price.enumerated() {
                   sum += Int(test2[i].value) * price
               }
               totalprice.text = "總金額：\(sum)元"
    }
    
    @IBAction func test3Stepper(_ sender: UIStepper) {
        test1[sender.tag].text = "\(Int(sender.value))個"
        total()
    }
    
   
}

