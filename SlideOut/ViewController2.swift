//
//  ViewController.swift
//  SlideOut
//
//  Created by Skander Jabouzi on 2017-10-03.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
  var menuView: MenuView2!
  var leadingConstraint: NSLayoutConstraint!
  var topConstraint: NSLayoutConstraint!
  var bottomConstraint: NSLayoutConstraint!
  var menuShowing = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    menuView = MenuView2(frame: CGRect(x: 0, y: 0, width: 240, height: 667))
  }
  
  override func viewDidAppear(_ animated: Bool) {
    self.view.addSubview(menuView)
    menuView.translatesAutoresizingMaskIntoConstraints = false
    setConstraints()
    leadingConstraint.constant = -240
    menuView.layer.shadowOpacity = 1
    menuView.layer.shadowRadius = 1
  }
  
  private func setConstraints() {
    leadingConstraint = NSLayoutConstraint(item: menuView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
    topConstraint = NSLayoutConstraint(item: menuView, attribute: .top, relatedBy: .equal, toItem: self.topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
    bottomConstraint = NSLayoutConstraint(item: menuView, attribute: .bottom, relatedBy: .equal, toItem: self.bottomLayoutGuide, attribute: .top, multiplier: 1, constant: 0)

    view.addConstraint(leadingConstraint)
    view.addConstraint(topConstraint)
    view.addConstraint(bottomConstraint)
  }
  
  @IBAction func openMenu(_ sender: Any) {
    if (menuShowing == false) {
      leadingConstraint.constant = 0
    } else {
      leadingConstraint.constant = -240
    }
    
    UIView.animate(withDuration: 0.3, animations: {
      self.view.layoutIfNeeded()
    })
    menuShowing = !menuShowing
    debugPrint(menuShowing)
  }    
  
}


