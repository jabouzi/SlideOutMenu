//
//  MenuView.swift
//  SlideOut
//
//  Created by Skander Jabouzi on 2017-10-08.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import UIKit

class MenuView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var contentLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        Bundle.main.loadNibNamed("MenuView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
