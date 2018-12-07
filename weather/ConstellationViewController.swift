//
//  ConstellationViewController.swift
//  weather
//
//  Created by cxm on 2018/12/7.
//  Copyright © 2018 cxm. All rights reserved.
//

import UIKit


class ConstellationViewController: UIViewController {
    var imageName: String?
    
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let name = imageName {
            beautyImage.image = UIImage(named: name)
            switch name{
            case"aquarius":
                navigationItem.title = "水瓶座"
            case"Aries":
                navigationItem.title = "白羊座"
            case"Cancer":
                navigationItem.title = "天蝎座"
            case"Capricorn":
                navigationItem.title = "摩羯座"
            case"Gemini":
                navigationItem.title = "双子座"
            case"Leo":
                navigationItem.title = "狮子座"
            case"Libra":
                navigationItem.title = "天秤座"
            case"Pisces":
                navigationItem.title = "双鱼座"
            case"Scorpio":
                navigationItem.title = "巨蟹座"
            case"shooter":
                navigationItem.title = "射手座"
            case"Taurus":
                navigationItem.title = "金牛座"
            case"Virgo":
                navigationItem.title = "处女座"
            default:
                navigationItem.title = "十二生肖"
            }
            
        }
}
}
