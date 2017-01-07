//
//  ViewController.swift
//  MBTextPicker
//
//  Created by Manish Bhande on 07/01/17.
//  Copyright © 2017 Manish Bhande. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: MBTextFieldPicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.defaultSelectedString = nil
        titleTextField.dataSet = ["Mr.","Mrs.","Miss"]
        
        titleTextField.setRightButton("Done", style: .default) {
            self.titleTextField.defaultSelectedString = self.titleTextField.selectedString
            print(self.titleTextField.selectedString ?? "Selected value")
            self.titleTextField.closePicker()
        }
        
        titleTextField.setLeftButton("Cancel", style: .close) {
            self.titleTextField.showDefaultString()
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

