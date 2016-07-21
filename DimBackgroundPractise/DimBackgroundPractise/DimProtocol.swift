//
//  DimProtocol.swift
//  DimBackgroundPractise
//
//  Created by 李 宇亮 on 16/7/21.
//  Copyright © 2016年 NightWatcher. All rights reserved.
//

import UIKit

enum Direction {
    case show
    case pop
}

protocol Dimmable {
    
}

extension Dimmable where Self: UIViewController {
    
    func dim(direction: Direction,
             color: UIColor = .blackColor(),
             alpha: CGFloat = 0.0,
             speed: Double = 0.0) {
        switch direction {
        case .show:
            let dimView = UIView(frame: view.frame)
            dimView.backgroundColor = color
            dimView.alpha = 0.0
            view.addSubview(dimView)
            UIView.animateWithDuration(speed, animations: { 
                dimView.alpha = alpha
            })
           
        case .pop:
            UIView.animateWithDuration(speed, animations: { 
                self.view.subviews.last?.alpha = alpha ?? 0
                print(self.view.subviews.count)
                
                
                
                
                }, completion: { (completed) in
                    self.view.subviews.last?.removeFromSuperview()
            })
            
        }
    }
}