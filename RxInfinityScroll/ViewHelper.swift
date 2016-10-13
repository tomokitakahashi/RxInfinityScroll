//
//  ViewHelper.swift
//  RxInfinityScroll
//
//  Created by takahashi tomoki on 2016/10/13.
//  Copyright © 2016年 takahashi tomoki. All rights reserved.
//

import Foundation
import UIKit

class ViewHelper {
    static let sharedInstance = ViewHelper()
    
    func addChildContainer(targetView : UIView , parentVC : UIViewController , childVC : UIViewController){
        
        childVC.view.frame = targetView.frame
        targetView.addSubview(childVC.view)
        childVC.didMove(toParentViewController: parentVC)
        
    }
    
}
