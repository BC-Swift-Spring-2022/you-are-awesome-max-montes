//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Max Montes on 1/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Fantastic", "Fabulous? That's You!"]
        
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//        }
        
        let imageName = "image\(imageNumber)"
        if (imageNumber == 4) {
            imageNumber = 1
        }
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1;
//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let bombMessage = "You Are Da Bomb!"
//
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "waterfall")
//        }
//        else if messageLabel.text == bombMessage {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "tetons")
//        }
//        else {
//            messageLabel.text = bombMessage
//            imageView.image = UIImage(named: "volcano")
//        }
    }
}
    
