//
//  ViewController.swift
//  MBTextPicker
//
//  Created by Manish Bhande on 07/01/17.
//  Copyright © 2017 Manish Bhande. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField1: MBTextFieldPicker!
    @IBOutlet weak var textField2: MBTextFieldPicker!
    @IBOutlet weak var textField3: MBTextFieldPicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.demo1()
        self.demo2()
        self.demo3()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demo1() {
        textField1.placeholder = "Fruite"
        textField1.defaultSelectedString = nil
        textField1.dataSet = ["Apple", "Banana", "Blackberry", "Mango", "Orange", "Pineapple"]
        textField1.setRightButton("Done", style: .default) {
            self.textField1.defaultSelectedString = self.textField1.selectedString
            print(self.textField1.selectedString ?? "Selected value")
            self.textField1.closePicker()
        }
        
        textField1.setLeftButton("Cancel", style: .close) {
            self.textField1.showDefaultString()
        }
    }
    func demo2() {
        textField2.placeholder = "Fruite"
        textField1.defaultSelectedString = nil
        textField2.dataSet = ["Apple", "Banana", "Blackberry", "Mango", "Orange", "Pineapple"]
        textField2.autoUpdate = false
        textField2.setRightButton("Done", style: .default) {
            self.textField2.defaultSelectedString = self.textField2.selectedString
            self.textField2.showDefaultString()
            print(self.textField2.selectedString ?? "Selected value")
            self.textField2.closePicker()
        }
    }
    func demo3() {
        textField3.placeholder = "Fruite"
        textField3.defaultSelectedString = nil
        textField3.dataSet = ["Apple", "Banana", "Blackberry", "Mango", "Orange", "Pineapple"]
        
        textField3.setRightButton("Done", style: .default) {
            self.textField3.defaultSelectedString = self.textField3.selectedString
            print(self.textField3.selectedString ?? "Selected value")
            self.textField3.closePicker()
        }
        
        textField3.setLeftButton("Cancel", style: .close) {
            self.textField3.showDefaultString()
        }
    }
    
    
}

