//
//  ViewController.swift
//  UnI
//
//  Created by woong on 10/26/23.
//

import UIKit

class DayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addDayTapped(_ sender: Any) {
        
        tabBarController?.tabBar.changeTabBar(hidden: true, animated: true)
        
        let sb = UIStoryboard(name: "AddDayView", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "AddDayViewController") as! AddDayViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

