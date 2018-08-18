//
//  DistanceViewController.swift
//  Unit Converter
//
//  Created by Admin on 8/18/2561 BE.
//  Copyright © 2561 BE sachini. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    @IBOutlet weak var metreT: UITextField!
    @IBOutlet weak var footT: UITextField!
    @IBOutlet weak var yardT: UITextField!
    @IBOutlet weak var kilometreT: UITextField!
    @IBOutlet weak var mileT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func metreChanged(_ sender: UITextField) {
        let (foot, yard, kilometre, mile) = Converter.instance.metre(self.metreT.text)
        self.footT.text = foot
        self.yardT.text = yard
        self.kilometreT.text = kilometre
        self.mileT.text = mile
    }
    
    @IBAction func footChanged(_ sender: UITextField) {
        let (metre, yard, kilometre, mile) = Converter.instance.foot(self.footT.text)
        self.metreT.text = metre
        self.yardT.text = yard
        self.kilometreT.text = kilometre
        self.mileT.text = mile
    }
    
    @IBAction func yardChanged(_ sender: UITextField) {
        let (metre, foot, kilometre, mile) = Converter.instance.yard(self.yardT.text)
        self.metreT.text = metre
        self.footT.text = foot
        self.kilometreT.text = kilometre
        self.mileT.text = mile
    }
    
    @IBAction func kilometreChanged(_ sender: UITextField) {
        let (metre, foot, yard, mile) = Converter.instance.kilometre(self.kilometreT.text)
        self.metreT.text = metre
        self.footT.text = foot
        self.yardT.text = yard
        self.mileT.text = mile
    }
    
    @IBAction func mileChanged(_ sender: UITextField) {
        let (metre, foot, yard, kilometre) = Converter.instance.mile(self.mileT.text)
        self.metreT.text = metre
        self.footT.text = foot
        self.yardT.text = yard
        self.kilometreT.text = kilometre
    }
}
