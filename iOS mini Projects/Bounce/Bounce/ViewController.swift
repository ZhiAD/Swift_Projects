//
//  ViewController.swift
//  Bounce
//
//  Created by Zhipeng Mei on 6/1/16.
//  Copyright © 2016 Zhipeng Mei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Btn.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 5.0, options: [], animations: ({
            self.Btn.center.x = self.view.frame.width / 2
                                    
            
        }), completion: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

