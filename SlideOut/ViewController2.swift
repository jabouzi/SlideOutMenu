//
//  ViewController.swift
//  SlideOut
//
//  Created by Skander Jabouzi on 2017-10-03.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var menuView: MenuView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        menuView = MenuView(frame: CGRect(x: 0, y: 0, width: 240, height: 667))
//        let childViewController = UIStoryboard(name: "Main2", bundle: nil).instantiateViewController(withIdentifier: "menuViewController");
//        self.addChildViewController(childViewController)
//        self.view.addSubview(childViewController.view)
//        childViewController.didMove(toParentViewController: self)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.addSubview(menuView)
    }
}


