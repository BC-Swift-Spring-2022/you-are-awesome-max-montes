//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Max Montes on 1/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("👍 viewDidLoad has run!")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
    }
}

