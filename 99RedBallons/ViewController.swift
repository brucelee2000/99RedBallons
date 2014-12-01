//
//  ViewController.swift
//  99RedBallons
//
//  Created by Yosemite on 11/30/14.
//  Copyright (c) 2014 Yosemite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var balloonNumberLabel: UILabel!
    var balloonArray:[Balloon] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createBallonArray()
        myImageView.image = balloonArray[0].image
        balloonNumberLabel.text = "\(balloonArray[0].number) Balloons"
        currentIndex = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createBallonArray() {
        for var i=0;i<99;i++ {
            balloonArray.append(Balloon())
            balloonArray[i].number = i
            let imageNumber = Int(arc4random_uniform(UInt32(3)))
            switch imageNumber {
            case 0:
                balloonArray[i].image = UIImage(named: "balloon0.jpeg")
            case 1:
                balloonArray[i].image = UIImage(named: "balloon1.jpeg")
            case 2:
                balloonArray[i].image = UIImage(named: "balloon2.jpeg")
            case 3:
                balloonArray[i].image = UIImage(named: "balloon3.jpeg")
            default:
                println("IMAGE number is out of boundary")
            }
        }
    }
    
    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
        if currentIndex == 99 {
            currentIndex = 0
        } else {
            currentIndex++
        }
        
        // Add transition
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionFlipFromBottom, animations: {
            self.balloonNumberLabel.text = "\(self.balloonArray[self.currentIndex].number) Balloons"
            self.myImageView.image = self.balloonArray[self.currentIndex].image
            }, completion: { (finished:Bool) -> () in })

    }

}

