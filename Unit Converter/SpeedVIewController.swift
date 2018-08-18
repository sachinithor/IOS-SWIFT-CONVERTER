//
//  SpeedVIewController.swift
//  Unit Converter
//
//  Created by Admin on 8/18/2561 BE.
//  Copyright © 2561 BE sachini. All rights reserved.
//

import UIKit

class SpeedVIewController: UIViewController {

    @IBOutlet weak var mpsT: UITextField!
    @IBOutlet weak var fpmT: UITextField!
    @IBOutlet weak var kphT: UITextField!
    @IBOutlet weak var mphT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mpsChanged(_ sender: UITextField) {
        let (fpm, kph, mph) = Converter.instance.mps(self.mpsT.text)
        self.fpmT.text = fpm
        self.kphT.text = kph
        self.mphT.text = mph
    }
    
    @IBAction func fpmChanged(_ sender: UITextField) {
        let (mps, kph, mph) = Converter.instance.fpm(self.fpmT.text)
        self.mpsT.text = mps
        self.kphT.text = kph
        self.mphT.text = mph
    }
    
    @IBAction func kpmChanged(_ sender: UITextField) {
        let (mps, fpm, mph) = Converter.instance.kph(self.kphT.text)
        self.mpsT.text = mps
        self.fpmT.text = fpm
        self.mphT.text = mph
    }
   
    @IBAction func mphChanged(_ sender: UITextField) {
        let (mps, fpm, kph) = Converter.instance.mph(self.mphT.text)
        self.mpsT.text = mps
        self.fpmT.text = fpm
        self.kphT.text = kph
    }
    

}
