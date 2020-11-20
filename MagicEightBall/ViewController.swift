//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Joseph Cottingham on 11/20/20.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    
    @IBOutlet weak var shakeItBtn: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shakeBtnPress(_ sender: Any){
        print("Shake It!")
        answerLabel.text = answers.randomElement()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        answerLabel.text = answers.randomElement()
    }

}

