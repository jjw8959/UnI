//
//  Extension.swift
//  UnI
//
//  Created by woong on 10/26/23.
//

import UIKit

extension UITabBar {
    
    func changeTabBar(hidden:Bool, animated: Bool){
        if self.isHidden == hidden { return }
        let frame = self.frame
        let offset = hidden ? frame.size.height: -frame.size.height
        let duration:TimeInterval = (animated ? 0.25 : 0.0)
        self.isHidden = false
        
        UIView.animate(withDuration: duration, animations: {
            self.frame = frame.offsetBy(dx: 0, dy: offset)
        }, completion: { (true) in
            self.isHidden = hidden
        })
    }
}

extension UIViewController {
    
    func pushToViewController(name: String, identifier: String, animationChecker: inout Int) {
        tabBarController?.tabBar.changeTabBar(hidden: true, animated: true)
        animationChecker = 1
        let sb = UIStoryboard(name: name, bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: identifier)
        navigationController?.pushViewController(vc, animated: true)
    }
}
