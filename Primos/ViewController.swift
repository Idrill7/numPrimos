//
//  ViewController.swift
//  Primos
//
//  Created by alejandro gonzalez casado on 5/9/18.
//  Copyright © 2018 Idrilplays. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var textSolution: UILabel!
    
    @IBAction func butVerif(_ sender: UIButton) {
        
        if let fieldStr = textField.text, let x = Int(fieldStr) {
        var y :Int =  2
        var esDivisible :Bool = false
        
        while y < x && !esDivisible {
            if x % y == 0 {
                esDivisible = true
                textSolution.text = "El numero \(x) tiene divisores,por lo tanto no es primo!! 🚫"
            } else {
                y += 1
                textSolution.text = "El numero \(x) es primo 🆗 ¡No tiene divisores!"
                    }
                }
        } else {
            textSolution.text = " Inserta algun numero por favor "
        }
        }
    }

