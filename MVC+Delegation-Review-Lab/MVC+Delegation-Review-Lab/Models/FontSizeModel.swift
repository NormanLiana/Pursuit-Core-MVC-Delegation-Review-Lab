//
//  FontSizeModel.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Liana Norman on 8/20/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation
import UIKit

struct FontSizeModel {
    var currentSize: CGFloat = 10
    
    mutating func updateFontSize(number: CGFloat) {
        currentSize = number
    }
}
