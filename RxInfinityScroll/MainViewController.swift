//
//  MainViewController.swift
//  RxInfinityScroll
//
//  Created by takahashi tomoki on 2016/10/13.
//  Copyright © 2016年 takahashi tomoki. All rights reserved.
//

import UIKit

class MainViewController: UIPageViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        configurePageVC()
        configureScrollView()
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    func getFirstVC() -> FirstViewController{
        return storyboard?.instantiateViewController(withIdentifier: "first") as! FirstViewController
    }
    
    func getSecondVC() -> SecondViewController{
        return storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
    }

}
// MARK: - Private Method
fileprivate extension MainViewController {
    func configureScrollView(){
        self.view.subviews.forEach({ view in
            guard let scrollView = view as? UIScrollView else {
                return
            }
            scrollView.delegate = self
        })

    }
    func configurePageVC() {
        self.dataSource = self
        self.setViewControllers([getFirstVC()], direction: .forward, animated: true, completion: nil)
    }
    
}

// MARK: - UIScrollViewDelegate
extension MainViewController : UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.x)
    }
    
}
// MARK: - UIPageViewControllerDataSource
extension MainViewController : UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKind(of: FirstViewController.self) {
            return getSecondVC()
        }else if viewController.isKind(of: SecondViewController.self) {
            return getFirstVC()
        }
        
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if viewController.isKind(of: SecondViewController.self) {
            return getFirstVC()
        }else if viewController.isKind(of: FirstViewController.self) {
            return getSecondVC()
        }
        
        return nil
    }

    
}
