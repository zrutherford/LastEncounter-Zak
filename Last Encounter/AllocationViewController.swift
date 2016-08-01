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
    
    func increase (var stat: Int, display: UILabel) -> Int{
        if points == 0{
            print("No Points Left")
        }
        else{
            points = points - 1
            stat = stat + 1
            display.text = "\(stat)"
            alloPoints.text = "\(points)"
        }
        return stat
    }
    
    func decrease(var stat: Int, display: UILabel) -> Int{
        if stat == 10{
            print("Can't Go Lower")
        }
        else{
            points = points + 1
            stat = stat - 1
            display.text = "\(stat)"
            alloPoints.text = "\(points)"
        }
        return stat
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onTappedIncreaseHealth(sender: AnyObject) {
        health = increase(health, display: healthPoints)
    }
    @IBAction func onTappedIncreaseSpeed(sender: AnyObject) {
        speed = increase(speed, display: speedPoints)
    }
    @IBAction func onTappedIncreaseStrength(sender: AnyObject) {
        strength = increase(strength, display: strengthPoints)
    }
    @IBAction func onTappedIncreaseMagic(sender: AnyObject) {
        magic = increase(magic, display: magicPoints)
    }
    @IBAction func onTappedIncreaseDefense(sender: AnyObject) {
        defense = increase(defense, display: defensePoints)
    }
    @IBAction func onTappedDecreaseHealth(sender: AnyObject) {
        health = decrease(health, display: healthPoints)
    }
    @IBAction func onTappedDecreaseSpeed(sender: AnyObject) {
        speed = decrease(speed, display: speedPoints)
    }
    @IBAction func onTappedDecreaseStrength(sender: AnyObject) {
        strength = decrease(strength, display: strengthPoints)
    }
    @IBAction func onTappedDecreaseMagic(sender: AnyObject) {
        magic = decrease(magic, display: magicPoints)
    }
    @IBAction func onTappedDecreaseDefense(sender: AnyObject) {
        defense = decrease(defense, display: defensePoints)
    }
    
    @IBAction func onTappedDoneButton(sender: UIButton) {
        if points == 0 {
            performSegueWithIdentifier("doneSeg", sender: nil)
        }
        else{
            print("Still Points Left")
        }
    }
}