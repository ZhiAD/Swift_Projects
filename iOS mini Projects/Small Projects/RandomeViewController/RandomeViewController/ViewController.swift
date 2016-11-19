//
//  ViewController.swift
//  RandomeViewController
//
//  Created by Zhipeng Mei on 5/31/16.
//  Copyright © 2016 Zhipeng Mei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrayOfName = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfName = ["First", "Second", "Main"]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ButtonPressed(sender: AnyObject) {
        let numOfNames = UInt32(arrayOfName.count)
        let randomNum = Int(arc4random() % numOfNames)
        let vcName = arrayOfName[randomNum]
        
        let vc = storyboard?.instantiateViewControllerWithIdentifier(vcName)
        self.presentViewController(vc!, animated: true, completion: nil)
    }
    



}

