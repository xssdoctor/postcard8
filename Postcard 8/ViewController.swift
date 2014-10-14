//
//  ViewController.swift
//  Postcard 8
//
//  Created by Jonathan dunn on 10/14/14.
//  Copyright (c) 2014 Jonathan dunn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var sendToTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!

    @IBOutlet weak var sendMailButtonUI: UIButton!
    
    @IBOutlet weak var labelSendTo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sendMailButton(sender: AnyObject) {
        //adding a message
        messageLabel.hidden=false
        messageLabel.text=enterMessageTextField.text
        messageLabel.textColor=UIColor.redColor()
        
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()
        sendMailButtonUI.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        labelSendTo.hidden=false
        labelSendTo.text=sendToTextField.text
        labelSendTo.textColor=UIColor.blueColor()
        
        sendToTextField.text=""
        sendToTextField.resignFirstResponder()
    }

}

