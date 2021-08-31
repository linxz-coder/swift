//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation //component of sound

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 5]
//    var secondsRemaining = 0
    var totalTime = 0
    var secondsPass = 0
    var originalTimer = Timer()
    var player: AVAudioPlayer! //component of sound
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        //progressBar.progress = 1.0
        
        originalTimer.invalidate() //stop the timer
        
        //print(sender.currentTitle!)
        let hardness = sender.currentTitle! //Soft, Medium, Hard
//        if hardness == "Soft" {
//            print(softTime)
//        } else if hardness == "Medium" {
//            print(mediumTime)
//        } else {
//            print(hardTime)
//        }
        
        //secondsRemaining = eggTimes[hardness]!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPass = 0
        titleLabel.text = hardness
        
        originalTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [unowned self] timer in
            //if self.secondsRemaining > 0 {
            if self.secondsPass < totalTime {
                
                //print("\(self.secondsRemaining) seconds.")
                self.secondsPass += 1
                let percentageProgress = Float(secondsPass) / Float(totalTime)
                print(percentageProgress) // debug
                progressBar.progress = percentageProgress
                if progressBar.progress == 1{
                    titleLabel.text = "Done."
                    
                    //sound
                    let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                    player = try! AVAudioPlayer(contentsOf: url!)
                    player.play()

                    
                }
                
                //self.secondsRemaining -= 1
            } else {
                //titleLabel.text = "Done."
                timer.invalidate()
            }
        }
        
    }
    
}
