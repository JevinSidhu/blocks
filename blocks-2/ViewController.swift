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
        progressBar.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2 )
        progressBar.transform = progressBar.transform.scaledBy(x: -1, y: 70)
        
        let startAmount = 10.0
        var block1 = Block(blockTotal: Float(startAmount))
        let timer = Timer.new(every: 0.005.second) {
            (timer: Timer) in
            block1.countToTen()
            self.progressBar.progress = Float(block1.blockTotal) / 10
            if block1.blockTotal < 0 {
                print("resetting counter")
                block1.blockTotal = Float(startAmount)
                self.progressBar.backgroundColor = UIColor(red: 243/255, green: 129/255, blue: 129/255, alpha: 0.5)

            }
        }
        timer.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
