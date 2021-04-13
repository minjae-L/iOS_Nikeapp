//
//  MainSideMenuViewController.swift
//  SimpleApp
//
//  Created by 이민재 on 13/04/2021.
//  Copyright © 2021 이민재. All rights reserved.
//

import UIKit
import SideMenu

class CustomSideMenuNavigation: SideMenuNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.menuWidth = self.view.frame.width * 0.7
        self.presentationStyle = .menuSlideIn
        self.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
