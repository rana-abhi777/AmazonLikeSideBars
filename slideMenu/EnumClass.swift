//
//  File.swift
//  slideMenu
//
//  Created by Sierra 4 on 04/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import Foundation
import UIKit

enum Direction{
    
    case left 
    case right
    
    var direction : CGFloat {
        
        switch self {
        case .left:
            return  -UIScreen.main.bounds.size.width
        case .right:
            return UIScreen.main.bounds.size.width
        }
    }
    var backdirection : CGFloat {
        
        switch self {
        case .left:
            return -UIScreen.main.bounds.size.width
        case .right:
            return UIScreen.main.bounds.size.width
        }
    }
}
