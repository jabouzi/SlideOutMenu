//
//  ViewController.swift
//  SlideOut
//
//  Created by Skander Jabouzi on 2017-10-03.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leadingConstraint.constant = -214
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 1
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        menuShowing = false
        leadingConstraint.constant = -214
    }

    @IBAction func openMenu(_ sender: Any) {
        if (menuShowing == false) {
            leadingConstraint.constant = 0
        } else {
            leadingConstraint.constant = -214
        }
        
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
        menuShowing = !menuShowing
    }    
}

