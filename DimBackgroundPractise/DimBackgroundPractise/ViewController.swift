//
//  ViewController.swift
//  DimBackgroundPractise
//
//  Created by 李 宇亮 on 16/7/21.
//  Copyright © 2016年 NightWatcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Dimmable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //要点1.把ModallyViewController的view的背景色设为透明（默认的就是透明），attribute inspector 中的 Presention设置为Over Current Context
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        dim(.show, alpha: 0.5, speed: 0.5)
    }
    
    //要点2.storyboard中ModallyViewController类中pop按钮的实现在此，左边Exit中右击选择然后往pop按钮中拉线，前提是方法要添加@IBAction，同时要传递segue: UIStoryboardSegue这个参数

    @IBAction func unwindModallyVC(segue: UIStoryboardSegue) {
        dim(.pop, speed: 0.5)
    }
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

