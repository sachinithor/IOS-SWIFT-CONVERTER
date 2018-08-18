//
//  SecondViewController.swift
//  Unit Converter
//
//  Created by Admin on 8/18/2561 BE.
//  Copyright © 2561 BE sachini. All rights reserved.
//
// check commit
import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var celsiusT: UITextField!
    @IBOutlet weak var fahrenheit: UITextField!
    @IBOutlet weak var kelvinT: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func celsiusChanged(_ sender: UITextField) {
        let (fahrenheit, kelvin) = Converter.instance.celsius(self.celsiusT.text)
        self.fahrenheit.text = fahrenheit
        self.kelvinT.text = kelvin
    }
    
    @IBAction func fahrenheitChanged(_ sender: UITextField) {
        let (celsius, kelvin) = Converter.instance.fahrenheit(self.fahrenheit.text)
        self.celsiusT.text = celsius
        self.kelvinT.text = kelvin
    }
    
    @IBAction func kelvinChanged(_ sender: UITextField) {
        let (celsius, fahrenheit) = Converter.instance.kelvin(self.kelvinT.text)
        self.celsiusT.text = celsius
        self.fahrenheit.text = fahrenheit
    }
}

