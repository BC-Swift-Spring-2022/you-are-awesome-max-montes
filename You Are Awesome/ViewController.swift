//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Max Montes on 1/19/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitched: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 4
    let totalNumberOfSounds = 4
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(name: String ) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("😎ERROR: \(error.localizedDescription)could not initialize audio player")
            }

        } else {
            print("😎ERROR: could not read data from the file sound0")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat  {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn {
            audioPlayer.stop()
        }
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic", "Fabulous? That's You!"]
        

        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        if playSoundSwitched.isOn && audioPlayer != nil{
            playSound(name: "sound\(soundNumber)")
        }
    }
}
    
