//
//  GalleryViewController.swift
//  weather
//
//  Created by cxm on 2018/12/6.
//  Copyright © 2018 cxm. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    var imageName: String?
    
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let name = imageName {
            beautyImage.image = UIImage(named: name)
            switch name{
            case"tiger":
                navigationItem.title = "水瓶座"
            case"Aries":
                navigationItem.title = "白羊座"
            case"Cancer":
                navigationItem.title = "天蝎座"
            case"Capricorn":
                navigationItem.title = "摩羯座"
            case"cattle":
                navigationItem.title = "牛"
            case"chook":
                navigationItem.title = "鸡"
            case"dog":
                navigationItem.title = "狗"
            case"dragon":
                navigationItem.title = "龙"
            case"horse":
                navigationItem.title = "马"
            case"monkey":
                navigationItem.title = "猴"
            case"mouse":
                navigationItem.title = "鼠"
            case"pig":
                navigationItem.title = "猪"
            case"rabbit":
                navigationItem.title = "兔"
            case"sheep":
                navigationItem.title = "羊"
            case"snake":
                navigationItem.title = "蛇"
            case"aquarius":
                navigationItem.title = "虎"
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
    
    @IBAction func shareTapped(_ sender: Any) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩十二生肖app吧!,就在Github上https://github.com/20171105121/weather")
        controller.add(beautyImage.image)
        self.present(controller, animated: true,completion: nil)
    }
}
