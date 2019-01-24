//
//  ViewController.swift
//  Project2
//
//  Created by liuyanjun on 2019/1/24.
//  Copyright © 2019 liuyanjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    
    @IBAction func tapChange(_ sender: Any) {
        self.numLabel.text = "\(Int(self.numLabel.text!)! + 1)"
    }
    
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer) {
        if(sender.state == .changed){
             self.numLabel.text = "\(Int(self.numLabel.text!)! + 1)"
        }
    }

    @IBAction func reset(_ sender: Any) {
        self.numLabel.text = "0"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Counter"
        // Do any additional setup after loading the view, typically from a nib.
    }


}

