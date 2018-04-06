//
//  Field.swift
//  Field Survey
//
//  Created by Christopher Luong on 4/5/18.
//  Copyright © 2018 Christopher Luong. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage?{
        return UIImage(named: self.rawValue + "Icon")
    }
}
