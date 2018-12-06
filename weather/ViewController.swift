//
//  ViewController.swift
//  weather
//
//  Created by cxm on 2018/11/29.
//  Copyright © 2018 cxm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var twelve: UIPickerView!
    let array = ["牛","鸡","狗","龙","马","猴","鼠","猪","兔","羊","蛇","虎"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    twelve.dataSource = self
    twelve.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "GoToGallery"{
            let index = twelve.selectedRow(inComponent: 0)
            var imageName: String?
            switch index{
            case 0:
                imageName = "cattle"
            case 1:
                imageName = "chook"
            case 2:
                imageName = "dog"
            case 3:
                imageName = "dragon"
            case 4:
                imageName = "horse"
            case 5:
                imageName = "monkey"
            case 6:
                imageName = "mouse"
            case 7:
                imageName = "pig"
            case 8:
                imageName = "ribbte"
            case 9:
                imageName = "sheep"
            case 10:
                imageName = "snake"
            case 11:
                imageName = "tiger"
            default:
                imageName = nil
            }
            var vc = segue.destination as! GalleryViewController
            vc.imageName = imageName
    }
}
    @IBAction func close(segue: UIStoryboardSegue){
        print("closed")
    }
    
    }



