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
    
    func nonRepeatingRandom(lastNumber : Int, maxValue: Int) -> Int {
        //show a message
        var newIndex: Int
        repeat {
            newIndex = Int.random (in: 0..<maxValue)
        } while (lastNumber == newIndex)
        return newIndex
    }
    
    func playSound(soundName: String) {
        //play a sound
    
        
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
    
    
    @IBAction func showMessagePressed1(_ sender: UIButton) {
        
        let messages = ["You are Awesome!", "You are Great!", "You are Fantastic!", "When the Genius Bar needs help, they call you", "You brighten my day!", "You are da bomb!", "Hey, fabulous!", "You are tremendous!", "You've got the design skills of Jony Ive!", "I can't wait to download your app!"]
        
        
    
        
        //show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        
        
        
        //show an image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        
        
        
        
        
        //Get a random num to use in our soundName file
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
    
        
        //Play a sound
        var soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
        
        
      
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
    
    


