//
//  ViewController.swift
//  SlideOut
//
//  Created by Skander Jabouzi on 2017-10-03.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let childViewController = UIStoryboard(name: "Main2", bundle: nil).instantiateViewController(withIdentifier: "menuViewController");
        self.addChildViewController(childViewController)
        self.view.addSubview(childViewController.view)
        childViewController.didMove(toParentViewController: self)
        // Do any additional setup after loading the view, typically from a nib.
    }
}


