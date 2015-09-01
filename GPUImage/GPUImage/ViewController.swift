//
//  ViewController.swift
//  GPUImage
//
//  Created by 游义男 on 15/9/1.
//  Copyright (c) 2015年 游义男. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var blurFliter = GPUImageGaussianBlurFilter()
        // 模糊程度
        blurFliter.blurRadiusInPixels = 10;
        var image = UIImage(named: "photo4.jpg")
        var blurImage = blurFliter.imageByFilteringImage(image)
        var backgroundView = UIImageView(frame: self.view.frame)
        backgroundView.image = blurImage
        self.view.addSubview(backgroundView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

