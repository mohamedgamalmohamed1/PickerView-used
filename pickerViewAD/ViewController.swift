//
//  ViewController.swift
//  pickerViewAD
//
//  Created by mohamed gamal mohamed on 5/10/19.
//  Copyright © 2019 mohamed gamal mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    var accounts = ["admin","user","tester","manager" ]
    var user = ["mohamed","ahmed","amr","omar"]
    var tester = ["tester1","tester2","tester3","tester4" ]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if pickerView.tag == 0{
            return 2}
        else{
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
     return accounts.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0{
        if component == 0{
            return accounts[row]
        }
        else{
            return user[row]
        }
        }
        else {
            return tester[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0{
        if component == 0{
            laDisplay.text = accounts[row]
        }
        else{
            laDisplay.text = user[row]
        }
        }
        else {
            laDisplay.text = tester[row]
        }
            }
    

    @IBOutlet weak var pickerView2: UIPickerView!
    @IBOutlet weak var laDisplay: UILabel!
    @IBOutlet weak var pickerViewADV: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerViewADV.dataSource = self
        pickerViewADV.delegate = self
    }


}

