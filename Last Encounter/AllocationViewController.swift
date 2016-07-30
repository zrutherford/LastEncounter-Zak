//
//  AllocationViewController.swift
//  Last Encounter
//
//  Created by Zachary Rutherford on 7/30/16.
//  Copyright © 2016 Chris Stout. All rights reserved.
//

import UIKit

class AllocationViewController: UIViewController {

  
    @IBOutlet weak var alloPoints: UILabel!
    @IBOutlet weak var healthPoints: UILabel!
    @IBOutlet weak var speedPoints: UILabel!
    @IBOutlet weak var strengthPoints: UILabel!
    @IBOutlet weak var magicPoints: UILabel!
    @IBOutlet weak var defensePoints: UILabel!
    var points = 20
    var health = 10
    var speed = 10
    var strength = 10
    var magic = 10
    var defense = 10
    
    func increase (stat: Int, display: UILabel){
        if points == 0{
            print("No Points Left")
        }
        else{
            points = points - 1
            var stat = stat + 1
            display.text = "\(stat)"
            alloPoints.text = "\(points)"
        }
    }
    
    func decrease(stat: Int, display: UILabel){
        if stat == 10{
            print("Can't Go Lower")
        }
        else{
            points = points + 1
            var stat = stat - 1
            display.text = "\(stat)"
            alloPoints.text = "\(points)"
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onTappedIncreaseHealth(sender: AnyObject) {
        if points == 0{
            print("No Points Left")
        }
        else{
            points = points - 1
            health = health + 1
            healthPoints.text = "\(health)"
            alloPoints.text = "\(points)"
        }
    }
    
    @IBAction func onTappedIncreaseSpeed(sender: AnyObject) {
        if points == 0{
            print("No Points Left")
        }
        else{
            points = points - 1
            speed = speed + 1
            speedPoints.text = "\(speed)"
            alloPoints.text = "\(points)"
        }
    }
    
    @IBAction func onTappedIncreaseStrength(sender: AnyObject) {
        if points == 0{
            print("No Points Left")
        }
        else{
            points = points - 1
            strength = strength + 1
            strengthPoints.text = "\(strength)"
            alloPoints.text = "\(points)"
        }
    }
    
    @IBAction func onTappedIncreaseMagic(sender: AnyObject) {
        if points == 0{
            print("No Points Left")
        }
        else{
            points = points - 1
            magic = magic + 1
            magicPoints.text = "\(magic)"
            alloPoints.text = "\(points)"
        }
    }

    @IBAction func onTappedIncreaseDefense(sender: AnyObject) {
        if points == 0{
            print("No Points Left")
        }
        else{
            points = points - 1
            defense = defense + 1
            defensePoints.text = "\(defense)"
            alloPoints.text = "\(points)"
        }
    }
    
    @IBAction func onTappedDecreaseHealth(sender: AnyObject) {
        if health == 0{
            print("No Points Left")
        }
        else{
            points = points + 1
            health = health - 1
            healthPoints.text = "\(health)"
            alloPoints.text = "\(points)"
        }
    }
 
    @IBAction func onTappedDecreaseSpeed(sender: AnyObject) {
        if speed == 0{
            print("No Points Left")
        }
        else{
            points = points + 1
            speed = speed - 1
            speedPoints.text = "\(speed)"
            alloPoints.text = "\(points)"
        }
    }

    @IBAction func onTappedDecreaseStrength(sender: AnyObject) {
        if strength == 0{
            print("No Points Left")
        }
        else{
            points = points + 1
            strength = strength - 1
            strengthPoints.text = "\(strength)"
            alloPoints.text = "\(points)"
        }

    }
    
    @IBAction func onTappedDecreaseMagic(sender: AnyObject) {
        if magic == 0{
            print("No Points Left")
        }
        else{
            points = points + 1
            magic = magic - 1
            magicPoints.text = "\(magic)"
            alloPoints.text = "\(points)"
        }
    }
    
    @IBAction func onTappedDecreaseDefense(sender: AnyObject) {
        if defense == 0{
            print("No Points Left")
        }
        else{
            points = points + 1
            defense = defense - 1
            defensePoints.text = "\(defense)"
            alloPoints.text = "\(points)"
        }
    }
    

    
    @IBAction func onTappedDoneButton(sender: UIButton) {
        if points == 0 {
            
        }
        else{
            print("Still Points Left")
        }
    }
}