//
//  ViewController.swift
//  RxInfinityScroll
//
//  Created by takahashi tomoki on 2016/10/13.
//  Copyright © 2016年 takahashi tomoki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView(frame: CGRect(x: 100, y: 100, width: 30, height: 30))
        
        view.backgroundColor = .red
        self.view.addSubview(view)
        
        self.animation(view: view)

    }
    
    func animation(view : UIView){
        UIView.animate(withDuration: 2.0, animations: {
            var frame = view.frame
            frame.origin.x += 100
            view.frame = frame
            
            }, completion: { _ in
                self.returnView(view: view)
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

