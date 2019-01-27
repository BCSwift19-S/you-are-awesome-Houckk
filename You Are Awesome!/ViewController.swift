//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Kenyan Houck on 1/14/19.
//  Copyright © 2019 Kenyan Houck. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6

    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showMessagePressed1(_ sender: UIButton) {
        
        let messages = ["You are Awesome!", "You are Great!", "You are Fantastic!", "When the Genius Bar needs help, they call you", "You brighten my day!", "You are da bomb!", "Hey, fabulous!", "You are tremendous!", "You've got the design skills of Jony Ive!", "I can't wait to download your app!"]
        
        
        //var newIndex = -1
        var newIndex: Int //declares but doesnt initialize newIndex
        
        //show a message
        repeat {
            newIndex = Int.random (in: 0..<messages.count)
        } while (index == newIndex)
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
        
        
        //show an image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        } while (imageIndex == newIndex)
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        
        
        
        
        
        //Get a random num to use in our soundName file
        
        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while (imageIndex == newIndex)
        
        soundIndex = newIndex
        
        
        
        
        //play a sound
        
        var soundName = "sound\(soundIndex)"
        
        //Can we load in the file soundName
        if let sound = NSDataAsset(name: soundName)
        {
         do{
            try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print ("ERROR: data in \(soundName) coundlnt be played as a sound")
            }
        } else {
                //if reading in the NSDataAssest didnt work, tell the developer/report error
            print ("ERROR: file\(soundName) didn't load")
        }
    }
}
        
        
        
        
        
        
        
        
        
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
    
    


