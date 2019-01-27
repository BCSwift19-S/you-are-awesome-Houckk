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
    var index = 0

    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed1(_ sender: UIButton) {
        
        let messages = ["You are Awesome!", "You are Great!", "You are Fantastic!", "When the Genius Bar needs help, they call you", "You brighten my day!", "You are da bomb!", "Hey, fabulous!", "You are tremendous!", "You've got the design skills of Jony Ive!", "I can't wait to download your app!"]
        
        
        //var newIndex = -1
        var newIndex: Int //declares but doesnt initialize newIndex
        
        repeat {
            newIndex = Int.random (in: 0..<messages.count)
        } while (index == newIndex)
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
//        messageLabel.text = messages.randomElement()!
        
//        messageLabel.text = messages[index]
//
//        if (index == messages.count-1)
//        {
//            index = 0
//        } else {
//            index = index + 1
//        }
//        messageLabel.textColor = UIColor.red
    }
    
}

