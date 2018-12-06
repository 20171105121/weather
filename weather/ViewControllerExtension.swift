//
//  ViewControllerExtension.swift
//  weather
//
//  Created by cxm on 2018/12/6.
//  Copyright © 2018 cxm. All rights reserved.
//

import UIKit
extension ViewController: UIPickerViewDataSource{
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
}
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return array.count
    }
}
extension ViewController: UIPickerViewDelegate{
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return array[row]
    }
}
