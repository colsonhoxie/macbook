//
//  Num2ViewController.swift
//  learnCalc
//
//  Created by Colson Hoxie on 12/19/16.
//  Copyright © 2016 Colson Hoxie. All rights reserved.
//

import UIKit
var solutionX: UInt32 = 0
var solutionY: UInt32 = 0


class Num2ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var functionOne: UILabel!
    @IBOutlet weak var functionTwo: UILabel!
    @IBOutlet weak var solution: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        functionOne.text = "\(String(x1))x +  \(String(y1))y = \(String(z1))"
        functionTwo.text = "\(String(x2))x +  \(String(y2))y = \(String(z2))"
        solution.text = "Solution will be output here"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Actions
    
    //Function to solve the system of equations
    @IBAction func solver(_ sender: UIButton) {
        var a: Double = 0
        var b: Double = 0
        
        //If the if statement is false, we have no solution. However, if it is true, we can solve for X and Y using a basic matrix method
    
        if x1*y2 - x2*y1 != 0 {
            let inverseCo = 1/(x1*y2 - x2*y1)
            
            a = inverseCo*(z1*y2-y1*z2)
            b = inverseCo*(x1*z2-x2*z1)
            solution.text = "x = \(String(a)) and y = \(String(b))"
        }
        else {
            solution.text = "There is no solution"
        }
    }

}
