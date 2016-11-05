//
//  ViewController.swift
//  blocks-2
//
//  Created by Jevin Sidhu on 2016-11-05.
//  Copyright © 2016 Jevin Sidhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var block1 = Block(blockTotal: 11)
        let timer = Timer.new(every: 1.second) {
            (timer: Timer) in
            block1.countToTen()
            self.progressBar.progress = Float(block1.blockTotal) / 10
            if block1.blockTotal == 0 {
                print("resetting counter")
                block1.blockTotal = 11
            }
        }
        timer.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
