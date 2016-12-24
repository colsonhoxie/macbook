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
var doubleNum: Double = 0

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var funcGenerated: UILabel!
    @IBOutlet weak var funcGenerated2: UILabel!
    @IBOutlet weak var x1TextField: UITextField!
    @IBOutlet weak var x2TextField: UITextField!
    @IBOutlet weak var y1TextField: UITextField!
    @IBOutlet weak var y2TextField: UITextField!
    @IBOutlet weak var z1TextField: UITextField!
    @IBOutlet weak var z2TextField: UITextField!
   
    
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
        //Call the random function
        
        x1 = 0.0
        x2 = 0.0
        y1 = 0.0
        y2 = 0.0
        z1 = 0.0
        z2 = 0.0
        
        self.x1UserEntry()
        self.x2UserEntry()
        self.y1UserEntry()
        self.y2UserEntry()
        self.z1UserEntry()
        self.z2UserEntry()
        
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
        while x1 == 0 {
            if isNegative() == true {
                x1 = -Double(arc4random_uniform(500))
            }
            if isNegative() == false {
                x1 = Double(arc4random_uniform(500))
            }
        }
        
        //x2 variable
        while x2 == 0 {
            if isNegative() == true {
                x2 = -Double(arc4random_uniform(20))
            }
            if isNegative() == false {
                x2 = Double(arc4random_uniform(20))
            }
        }
        
        //y1 variable
        while y1 == 0 {
            if isNegative() == true {
                y1 = -Double(arc4random_uniform(20))
            }
            if isNegative() == false {
                y1 = Double(arc4random_uniform(20))
            }
        }
        
        //y2 variable
        while y2 == 0 {
            if isNegative() == true {
                y2 = -Double(arc4random_uniform(20))
            }
            if isNegative() == false {
                y2 = Double(arc4random_uniform(20))
            }
        }
        
        //z1 variable
        while z1 == 0 {
            if isNegative() == true {
                z1 = -Double(arc4random_uniform(20))
            }
            if isNegative() == false {
                z1 = Double(arc4random_uniform(20))
            }
        }
        
        //z2 variable
        while z2 == 0 {
            if isNegative() == true {
                z2 = -Double(arc4random_uniform(20))
            }
            if isNegative() == false {
                z2 = Double(arc4random_uniform(20))
            }
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
    
    //The following functions allow the user to input their own values
    func x1UserEntry() {
        guard let txtData = x1TextField.text, let doubleNum = Double(txtData) else {
            // report error and then `return`
            return
        }
        x1 = doubleNum
    }
    
    func x2UserEntry() {
        guard let txtData = x2TextField.text, let doubleNum = Double(txtData) else {
            // report error and then `return`
            return
        }
        x2 = doubleNum
    }
    
    func y1UserEntry() {
        guard let txtData = y1TextField.text, let doubleNum = Double(txtData) else {
            // report error and then `return`
            return
        }
        y1 = doubleNum
    }
    
    func y2UserEntry() {
        guard let txtData = y2TextField.text, let doubleNum = Double(txtData) else {
            // report error and then `return`
            return
        }
        y2 = doubleNum
    }
    
    func z1UserEntry() {
        guard let txtData = z1TextField.text, let doubleNum = Double(txtData) else {
            // report error and then `return`
            return
        }
        z1 = doubleNum
    }
    
    func z2UserEntry() {
        guard let txtData = z2TextField.text, let doubleNum = Double(txtData) else {
            // report error and then `return`
            return
        }
        z2 = doubleNum
    }
    
}
