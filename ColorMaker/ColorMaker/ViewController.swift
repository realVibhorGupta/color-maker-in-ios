//
//  ViewController.swift
//  ColorMaker
//
//  Created by Vibhor Gupta on 8/10/17.
//  Copyright © 2017 Vibhor Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var greenControl: UISwitch!
    
    
    @IBOutlet weak var blueControl: UISwitch!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeColorComponent(sender : AnyObject){
        print("calling color component")
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        let r: CGFloat = self.redControl.isOn ? 1 : 0
        let g: CGFloat = self.greenControl.isOn ? 1 : 0
        let b: CGFloat = self.blueControl.isOn ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
}

