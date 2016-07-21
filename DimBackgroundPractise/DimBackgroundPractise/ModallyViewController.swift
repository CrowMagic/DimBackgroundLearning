//
//  ModallyViewController.swift
//  DimBackgroundPractise
//
//  Created by 李 宇亮 on 16/7/21.
//  Copyright © 2016年 NightWatcher. All rights reserved.
//

import UIKit

class ModallyViewController: UIViewController {

    
    @IBOutlet weak var showView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        showView.layer.cornerRadius = 10
        showView.layer.borderColor = UIColor.blackColor().CGColor
        showView.layer.shadowColor = UIColor.blackColor().CGColor
        showView.layer.shadowOpacity = 0.6
        showView.layer.shadowRadius = 15
        showView.layer.shadowOffset = CGSize(width: 5, height: 5 )
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("deinit")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


