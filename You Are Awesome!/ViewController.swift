//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kenyan Houck on 1/14/19.
//  Copyright © 2019 Kenyan Houck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!

    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed1(_ sender: UIButton) {
        let message1 = "You are Awesome!"
        let message2 = "You are Great!"
        let message3 = "You are Amazing!"
        
        if (messageLabel.text == message1)
        {
            messageLabel.text = message2
        } else if (messageLabel.text == message2)
        {
            messageLabel.text = message3
        } else{
            messageLabel.text = message1
        }
        messageLabel.textColor = UIColor.red
    }
    
}

