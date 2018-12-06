//
//  GalleryViewController.swift
//  weather
//
//  Created by cxm on 2018/12/6.
//  Copyright © 2018 cxm. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    var imageName: String?
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if imageName != nil{
            beautyImage.image = UIImage(named: (imageName!))
            
    }

}
}
