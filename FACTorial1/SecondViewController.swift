//
//  SecondViewController.swift
//  FACTorial1
//
//  Created by Miles Tucker on 10/10/16.
//  Copyright © 2016 Miles Tucker. All rights reserved.
//

import UIKit
import AVFoundation


class SecondViewController: UIViewController {

    var Topics: [String] = ["Math", "Science", "Sports"]
    var mathFacts:[String] = ["If you write out pi to two decimal places, backwards it spells pie", "Zero is an even number.", "The most popular favourite number is 7."]

    
    var scienceFacts:[String] = ["Flea's can jump 130 times higher than their own height. In human terms this is equal to a 6ft. person jumping 780 ft. into the air.", "The largest man-made lake in the U.S. is Lake Mead, created by Hoover Dam.", "20 percent of Earth’s oxygen is produced by the Amazon rainforest"]
    
    var SportsFacts:[String] = ["NFL refs also receive Super Bowl rings.", "THERE ARE 18 MINUTES OF TOTAL ACTION IN A BASEBALL GAME.", "THE AVERAGE GOLF BALL HAS 336 DIMPLES.","Until 1936, the jump ball in basketball took place at center court after every single made basket."]
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    var pressed = 0


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textToSpeechMath(_ sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: Topics[0])
        myUtterance.rate = 0.5
        synth.speak(myUtterance)
        for fact in mathFacts{
     
        myUtterance = AVSpeechUtterance(string: fact)
        myUtterance.rate = 0.5
        synth.speak(myUtterance)
        myUtterance.postUtteranceDelay = 2
        }

}
    
    @IBAction func textToSpeechScience(_ sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: Topics[1])
        myUtterance.rate = 0.5
        synth.speak(myUtterance)
        for fact in scienceFacts{
            
            myUtterance = AVSpeechUtterance(string: fact)
            myUtterance.rate = 0.5
            synth.speak(myUtterance)
            myUtterance.postUtteranceDelay = 2
        }
    }

    @IBAction func quitButtonPressed(_ sender: UIButton) {
        
        if pressed%2==1 {
            synth.pauseSpeaking(at: AVSpeechBoundary.immediate)
        }
        
        else{
            synth.continueSpeaking()
        }
        
        pressed+=1
        
        
        //synth.continueSpeaking()
    }
    @IBAction func textToSpeechSports(_ sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: Topics[2])
        myUtterance.rate = 0.5
        synth.speak(myUtterance)
        for fact in SportsFacts{
            
            myUtterance = AVSpeechUtterance(string: fact)
            myUtterance.rate = 0.5
            synth.speak(myUtterance)
            myUtterance.postUtteranceDelay = 2
    }
}
    
}


