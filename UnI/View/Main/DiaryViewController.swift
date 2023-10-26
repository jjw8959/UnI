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
        tabBarController?.tabBar.changeTabBar(hidden: false, animated: true)
    }
    
    @IBAction func addDiaryTapped(_ sender: Any) {
        
        tabBarController?.tabBar.changeTabBar(hidden: true, animated: true)
        animationChecker
        let sb = UIStoryboard(name: "AddDayView", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "AddDayViewController") as! AddDayViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
