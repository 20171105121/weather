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
    //@IBOutlet weak var onetwo: UIPickerView!
    let array = ["牛","鸡","狗","龙","马","猴","鼠","猪","兔","羊","蛇","虎","白羊座","金牛座","双子座","巨蟹座","狮子座","处女座","天秤座","天蝎座","射手座","摩羯座","水瓶座","双鱼座"]
    
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
            case 22:
                imageName = "aquarius"
            case 12:
                imageName = "Aries"
            case 19:
                imageName = "Cancer"
            case 21:
                imageName = "Capricorn"
            case 14:
                imageName = "Gemini"
            case 16:
                imageName = "Leo"
            case 18:
                imageName = "Libra"
            case 23:
                imageName = "Pisces"
            case 15:
                imageName = "Scorpio"
            case 20:
                imageName = "shooter"
            case 13:
                imageName = "Taurus"
            case 17:
                imageName = "Virgo"
           default:
                imageName = nil
            }
            var vc = segue.destination as! GalleryViewController
            vc.imageName = imageName
    }
        
    }
    
    
    }
    


    

 



