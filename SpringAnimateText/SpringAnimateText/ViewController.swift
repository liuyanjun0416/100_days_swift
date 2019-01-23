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
        self.labelText  = UILabel(frame:CGRect(x:UIScreen.main.bounds.width / 2,y:200,width:300,height:30));
        self.labelText.text = String(self.count);
       
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
        
        let firstLabel = UILabel()
        firstLabel.text = "Hello"
        firstLabel.font = UIFont.systemFont(ofSize: 26)
        firstLabel.sizeToFit()
        firstLabel.center = CGPoint(x: 100, y: 40)
        
        view.addSubview(firstLabel)
        UIView.animate(withDuration: 1) {
            firstLabel.center = CGPoint(x: 100, y: 40 + 200);
            firstLabel.alpha = 0.0
        }
        
        let secondLabel = UILabel()
        secondLabel.text = "World"
        secondLabel.font = UIFont.systemFont(ofSize: 48)
        secondLabel.sizeToFit()
        secondLabel.center = CGPoint(x: 200, y: 90)
        secondLabel.alpha = 0.0
        view.addSubview(secondLabel)
        
        UIView.animate(withDuration: 3.0, delay: 1.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: {
            secondLabel.alpha = 1.0
            secondLabel.center = CGPoint(x:200,y:90 + 200)
        }) { (Bool) in
            let animation = CATransition()
            animation.duration = 1.0;
            animation.type = CATransitionType.fade;
            animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
            secondLabel.layer.add(animation, forKey: "changeTextTransition")
            secondLabel.text = "Welcome to ios world"
            secondLabel.sizeToFit()
            secondLabel.font = UIFont.systemFont(ofSize: 30)
            secondLabel.center = CGPoint(x: 300, y: 90 + 200);
            secondLabel.font = UIFont.systemFont(ofSize: 30)
        }
    }

    
}

