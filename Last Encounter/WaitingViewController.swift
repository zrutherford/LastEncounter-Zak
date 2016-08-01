//
//  WaitingViewController.swift
//  Last Encounter
//
//  Created by Zachary Rutherford on 7/30/16.
//  Copyright © 2016 Chris Stout. All rights reserved.
//

import UIKit

class WaitingViewController: UIViewController {
    
    var tillNextHero = 0
    @IBOutlet weak var warningLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if tillNextHero == 0 {
        tillNextHero = resetHeroTimer()
        }
        warningLable.text = "The Next Hero Will Be Here In \(tillNextHero) Turn(s)!"
    }
    
    func resetHeroTimer()->Int{
        let initial = arc4random_uniform(4)
        let setup = initial + 1
        let timer = Int(setup)
        return timer
    }

    
}
