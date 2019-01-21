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

    @IBAction func showMessagePressed(_ sender: UIButton) {
          messageLabel.text = "You Are Awesome!"
        }
    
}

