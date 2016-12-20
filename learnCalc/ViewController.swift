//
//  ViewController.swift
//  learnCalc
//
//  Created by Colson Hoxie on 12/19/16.
//  Copyright © 2016 Colson Hoxie. All rights reserved.
//

import UIKit

//All variables will be doubles to have "exact" solutions
var x1: Double = 0
var x2: Double = 0
var y1: Double = 0
var y2: Double = 0
var z1: Double = 0
var z2: Double = 0


class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var funcGenerated: UILabel!
    @IBOutlet weak var funcGenerated2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funcGenerated.text = "Function 1"
        funcGenerated2.text = "Function 2"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    
    //Generates 2 random equations that we want to solve
    @IBAction func generateFunction(_ sender: UIButton) {
        
        self.randomize()
        print(x1)
        print(x2)
        print(y1)
        print(y2)
        
        funcGenerated.text = "\(String(x1))x +  \(String(y1))y = \(String(z1))"
        
        funcGenerated2.text = "\(String(x2))x +  \(String(y2))y = \(String(z2))"
    }

    //This function creates random variables and will call the isNegative function to create potential negative values
    
    func randomize() {
        //x1 variable
        if isNegative() == true {
            x1 = -Double(arc4random_uniform(19)) + 1
        }
        if isNegative() == false {
            x1 = Double(arc4random_uniform(19)) + 1
        }
        
        //x2 variable
        if isNegative() == true {
            x2 = -Double(arc4random_uniform(19)) + 1
        }
        if isNegative() == false {
            x2 = Double(arc4random_uniform(19)) + 1
        }
        
        //y1 variable
        if isNegative() == true {
            y1 = -Double(arc4random_uniform(19)) + 1
        }
        if isNegative() == false {
            y1 = Double(arc4random_uniform(19)) + 1
        }
        
        //y2 variable
        if isNegative() == true {
            y2 = -Double(arc4random_uniform(19)) + 1
        }
        if isNegative() == false {
            y2 = Double(arc4random_uniform(19)) + 1
        }
        
        //z1 variable
        if isNegative() == true {
            z1 = -Double(arc4random_uniform(20))
        }
        if isNegative() == false {
            z1 = Double(arc4random_uniform(20))
        }
        
        //z2 variable
        if isNegative() == true {
            z2 = -Double(arc4random_uniform(20))
        }
        if isNegative() == false {
            z2 = Double(arc4random_uniform(20))
        }
    }
    
    //Called to determine if a variable will be negative or not
    func isNegative() -> Bool {
        if arc4random_uniform(2) == 1 {
            return true
        }
        else {
            return false
        }
    }

}
