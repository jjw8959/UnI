//
//  ViewController.swift
//  UnI
//
//  Created by woong on 10/26/23.
//

import UIKit

class DayViewController: UIViewController {

    static var animationChecker = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if DayViewController.animationChecker == 1 {
            tabBarController?.tabBar.changeTabBar(hidden: false, animated: true)
            DayViewController.animationChecker = 0
        }
    }

    @IBAction func settingTapped(_ sender: UIBarButtonItem) {
        pushToViewController(name: "SettingView", identifier: "SettingViewController", animationChecker: &DayViewController.animationChecker)
    }
    
    @IBAction func addDayTapped(_ sender: Any) {
        pushToViewController(name: "AddDayView", identifier: "AddDayViewController", animationChecker: &DayViewController.animationChecker)
    }
    
}

