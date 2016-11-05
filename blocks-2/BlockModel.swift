//
//  BlockModel.swift
//  blocks-2
//
//  Created by Jevin Sidhu on 2016-11-05.
//  Copyright © 2016 Jevin Sidhu. All rights reserved.
//

import Foundation
import UIKit

struct Block {
    var blockTotal: Float
    
    mutating func countToTen() {
        blockTotal -= 0.05
        print(blockTotal)
    }

}



