//
//  BlockModel.swift
//  blocks-2
//
//  Created by Jevin Sidhu on 2016-11-05.
//  Copyright © 2016 Jevin Sidhu. All rights reserved.
//

import Foundation
import UIKit

var counter: Int = 0
var clock = Timer.scheduledTimer(timeInterval: 600.0, target: BlockModel.self, selector: Selector(("countToTen")), userInfo: nil, repeats: true)

struct BlockModel {
    var timer = 1

    mutating func countToTen() {
        if counter != 6 {
            timer -= 1
            print(timer)
            counter += 1
        }
        else {
            print("fuck off")
        }
    }
}
