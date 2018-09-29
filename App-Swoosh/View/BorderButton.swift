//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by David E Bratton on 9/27/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    //CODE WE ADDED
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
