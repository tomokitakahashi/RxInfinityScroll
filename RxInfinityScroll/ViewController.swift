//
//  ViewController.swift
//  RxInfinityScroll
//
//  Created by takahashi tomoki on 2016/10/13.
//  Copyright © 2016年 takahashi tomoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tabContainer: UIView!

    let child1 = TabViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setUpTab()
        
    
        
/*
        let view = UIView(frame: CGRect(x: 100, y: 100, width: 30, height: 30))
        
        view.backgroundColor = .red
        self.view.addSubview(view)
        
    //    self.animation(view: view)
*/
    }
    
    func setUpTab(){
        let tabView : MenuView = MenuView.instantiate()
        tabView.frame = self.tabContainer.bounds
        tabView.autoresizingMask = [.flexibleWidth , .flexibleHeight]
        self.tabContainer.addSubview(tabView)
    }
    
  
 
    
    
    
    func animation(view : UIView){
        UIView.animate(withDuration: 0.01, animations: {
            var frame = view.frame
            frame.origin.x += 500
            view.frame = frame
            
            }, completion: { _ in
//                self.returnView(view: view)
        })

    }

    func returnView(view : UIView){
        UIView.animate(withDuration: 2.0, animations: {
            var frame = view.frame
            frame.origin.x -= 100
            view.frame = frame
            
            }, completion: { _ in
                print("complete")
        })
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

