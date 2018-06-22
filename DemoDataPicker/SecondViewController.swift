//
//  SecondViewController.swift
//  DemoDataPicker
//
//  Created by Đừng xóa on 6/22/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let ageArray = [Int](1...100)
    @IBOutlet weak var pickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ageArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(ageArray[row])"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    @IBAction func buttonTap(_ sender: UIButton) {
        let selectedNumberPicker = ageArray[pickerView.selectedRow(inComponent: (0))]
        print(selectedNumberPicker)
    }
    
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        let selectedNumberPicker = "\(ageArray[row])"
//        print(selectedNumberPicker)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
