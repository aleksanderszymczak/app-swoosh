//
//  borderBtn.swift
//  app-swoosh
//
//  Created by olos on 05.08.2017.
//  Copyright © 2017 olos. All rights reserved.
//

import UIKit

class borderBtn: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
