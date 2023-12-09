//
//  SettingViewController.swift
//  UnI
//
//  Created by woong on 11/6/23.
//

import UIKit

class SettingViewController: UIViewController {
    
    let contents = ["이미지 변경", "문구 수정"]
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigateItemGen()
        aaa()
         
    }
    
    func aaa() {
        let screenSize = UIScreen.main.bounds
        topView.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
    }

    private func navigateItemGen() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "완료", style: UIBarButtonItem.Style.plain, target: self, action: #selector(doneTapped(_:)))
    }
    
    @objc func doneTapped(_ sender: UIBarButtonItem) {
        pushToViewController(name: "Main", identifier: "DayViewController", animationChecker: &DayViewController.animationChecker)
    }
    
}

extension SettingViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch indexPath.row {
//        case 1: break
//            //이미지 피커
//        case 2: break
//            //문구 수정 alret
//        default:
//            return
//        }
//    }
}

//extension SettingViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//    
//    
//}


