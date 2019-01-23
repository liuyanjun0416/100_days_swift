//
//  ViewController.swift
//  SpringAnimateText
//
//  Created by hentaijun on 2019/1/23.
//  Copyright © 2019 hentaijun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: UIButton.ButtonType.system);
        button.setTitle("xxxxx", for: UIControl.State.normal);
        self.view.addSubview(button);
        
    }


}

