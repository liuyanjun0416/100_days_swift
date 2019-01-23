//
//  ViewController.swift
//  SpringAnimateText
//
//  Created by hentaijun on 2019/1/23.
//  Copyright © 2019 hentaijun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var labelText:UILabel!;
    var count:Int = 0;
    func initLabel(){
        self.labelText  = UILabel(frame:CGRect(x:0,y:0,width:300,height:30));
        self.labelText.text = String(self.count);
        self.labelText.center = view.center;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initLabel();
        self.view.addSubview(self.labelText);
       
        let button = UIButton(type: UIButton.ButtonType.system);
        button.bounds = CGRect(x:0,y:0,width:250,height:30);
        button.center = view.center;
        button.backgroundColor = UIColor.blue;
        button.setTitle("xxxxx", for: UIControl.State.normal);
        button.addTarget(self, action: #selector(buttonTouchHandle(sender:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(button);
    }
    
    @objc func buttonTouchHandle(sender:UIButton){
        print("click")
        self.count+=1
        self.labelText.text = String(self.count);
    }

    
}

