//
//  TabViewController.swift
//  RxInfinityScroll
//
//  Created by takahashi tomoki on 2016/10/13.
//  Copyright © 2016年 takahashi tomoki. All rights reserved.
//

import UIKit

class TabViewController: UIViewController {


    
    var tabView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UINib(nibName: "MenuView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! MenuView
        
        view.frame = CGRect(x: 0, y: 20, width: view.bounds.width, height: view.bounds.height)
        
        tabView = view
        
        self.view.addSubview(view)
        
        UIView.animate(withDuration: 0.1, animations: {
            var frame = self.tabView.frame
            frame.origin.x -= 500
            self.tabView.frame = frame
        })
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}
