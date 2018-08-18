//
//  FirstViewController.swift
//  Unit Converter
//
//  Created by Admin on 8/18/2561 BE.
//  Copyright © 2561 BE sachini. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var gramT: UITextField!
    @IBOutlet weak var kilogramT: UITextField!
    @IBOutlet weak var poundT: UITextField!
    @IBOutlet weak var ounceT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gramChanged(_ sender: Any) {
       let (kilogram, pound, ounce) = Converter.instance.gram(self.gramT.text)
        self.kilogramT.text = kilogram
        self.poundT.text = pound
        self.ounceT.text = ounce
    }
    
    @IBAction func kilogramChanged(_ sender: UITextField) {
        let (gram, pound, ounce) = Converter.instance.kilogram(self.kilogramT.text)
        self.gramT.text = gram
        self.poundT.text = pound
        self.ounceT.text = ounce
    }
    
    @IBAction func poundChand(_ sender: UITextField) {
        let (gram, kilogram, ounce) = Converter.instance.pound(self.poundT.text)
        self.gramT.text = gram
        self.kilogramT.text = kilogram
        self.ounceT.text = ounce
    }
    
    @IBAction func ounceChanged(_ sender: UITextField) {
        let (gram, kilogram, pound) = Converter.instance.ounce(self.ounceT.text)
        self.gramT.text = gram
        self.kilogramT.text = kilogram
        self.poundT.text = pound
    }
    
}

