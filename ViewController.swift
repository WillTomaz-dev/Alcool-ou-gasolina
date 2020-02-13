//
//  ViewController.swift
//  Alcool ou gasolina
//
//  Created by William Tomaz on 05/10/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var priceAlcohol: UITextField!
    @IBOutlet weak var priceGasoline: UITextField!
    @IBOutlet weak var resultValue: UILabel!
    @IBAction func calculateButton(_ sender: Any) {
    
        if priceGasoline.text!.isEmpty || priceAlcohol.text!.isEmpty{
            resultValue.text = "Digite os dois valores"
        }else{
            let alcohol = priceAlcohol.text! as NSString
            let gasoline = priceGasoline.text! as NSString
            let resultado = alcohol.floatValue / gasoline.floatValue
            if (resultado >= 0.71){
                resultValue.text = "É melhor gasolina"
            }else{
                resultValue.text = "É melhor Alcool"
            }
            
        }
       
    }
}

