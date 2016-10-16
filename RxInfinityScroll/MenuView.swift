//
//  MenuView.swift
//  RxInfinityScroll
//
//  Created by takahashi tomoki on 2016/10/13.
//  Copyright © 2016年 takahashi tomoki. All rights reserved.
//

import UIKit

class MenuView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
internal extension MenuView {
    static func instantiate() -> MenuView{
        return UINib(nibName: "MenuView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! MenuView
    }
    
    
}
