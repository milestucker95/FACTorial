//
//  FirstViewController.swift
//  FACTorial1
//
//  Created by Miles Tucker on 10/10/16.
//  Copyright © 2016 Miles Tucker. All rights reserved.
//

import UIKit
import AVFoundation


class FirstViewController: UIViewController {

    var Topics: [String] = ["Math", "Science", "Sports"]
    var mathQuestions:[String] = ["What is 3 factorial?", "What is the least common denominator between 7 and 5?", "What is 11 time 5?"]
    var mathAnswers:[String] = ["The answer is 6.", "The least common denominator is 35.", "The product is 55."]
    
    var scienceQuestions:[String] = ["What is element one on the periodic table?", "What animal is commonly referred to as the king of the jungle?", "What is the force called that always pushes in the opposite direction as its contact force?"]
    var scienceAnswers:[String] = ["The answer is Hydrogen", "The answer is African Lion","The answer is normal force."]
    
    var SportsQuestions:[String] = ["Who is the most highly recognized quarterback of the Patriots?", "How many players are on the field at a time in soccer?", "What is the name of the position in football who hikes the ball?"]
    var SportsAnswers:[String] = ["The answer is Tom Brady.", "The answer is 11.", "The answer is quarterback."]
    let rand = Int(arc4random_uniform(3))

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
    
    @IBAction func quitButtonPressed(sender: UIButton) {
        if pressed%2==0 {
            synth.pauseSpeakingAtBoundary(AVSpeechBoundary.Immediate)
        }
            
        else{
            synth.continueSpeaking()
        }
        
        pressed+=1
    }
    //Math
    @IBAction func textToSpeech(sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: Topics[0])
        myUtterance.rate = 0.5
        synth.speakUtterance(myUtterance)
        var i = 0
        repeat {
            myUtterance = AVSpeechUtterance(string: mathQuestions[i])
            myUtterance.rate = 0.5
            synth.speakUtterance(myUtterance)
            myUtterance.postUtteranceDelay = 2
            myUtterance = AVSpeechUtterance(string: mathAnswers[i])
            myUtterance.rate = 0.5
            synth.speakUtterance(myUtterance)
            myUtterance.postUtteranceDelay = 2
            i = i + 1
        } while i < 3
  

        
    }
    //Sports Function
    @IBAction func textToSpeechHistory(sender: AnyObject) {
        myUtterance = AVSpeechUtterance(string: Topics[2])
        myUtterance.rate = 0.5
        synth.speakUtterance(myUtterance)
        var i = 0
        repeat {
            myUtterance = AVSpeechUtterance(string: SportsQuestions[i])
            myUtterance.rate = 0.5
            synth.speakUtterance(myUtterance)
            myUtterance.postUtteranceDelay = 2
            myUtterance = AVSpeechUtterance(string: SportsAnswers[i])
            myUtterance.rate = 0.5
            synth.speakUtterance(myUtterance)
            myUtterance.postUtteranceDelay = 2
            i = i + 1
        } while i < 3
    }

    @IBAction func textToSpeechScience(sender: AnyObject) {
        myUtterance = AVSpeechUtterance(string: Topics[1])
        myUtterance.rate = 0.5
        synth.speakUtterance(myUtterance)
        var i = 0
        repeat {
            myUtterance = AVSpeechUtterance(string: scienceQuestions[i])
            myUtterance.rate = 0.5
            synth.speakUtterance(myUtterance)
            myUtterance.postUtteranceDelay = 2
            myUtterance = AVSpeechUtterance(string: scienceAnswers[i])
            myUtterance.rate = 0.5
            synth.speakUtterance(myUtterance)
            myUtterance.postUtteranceDelay = 2
            i = i + 1
        } while i < 3

    }
    
    
}

