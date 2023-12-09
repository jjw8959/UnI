//
//  DiaryViewController.swift
//  UnI
//
//  Created by woong on 10/26/23.
//

import UIKit

class DiaryViewController: UIViewController {

    private var animationChecker = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        if animationChecker == 1 {
            tabBarController?.tabBar.changeTabBar(hidden: false, animated: true)
            animationChecker = 0
        }
    }
    
    @IBAction func addDiaryTapped(_ sender: Any) {
        pushToViewController(name: "AddDiaryView", identifier: "AddDiaryViewController", animationChecker: &animationChecker)
    }
    
}
