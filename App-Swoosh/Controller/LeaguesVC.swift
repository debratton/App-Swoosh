//
//  LeaguesVC.swift
//  App-Swoosh
//
//  Created by David E Bratton on 9/28/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class LeaguesVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var womensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        nextBtn.isHidden = true
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLeague(leagueType: "mens")
        //mensBtn.layer.borderColor = UIColor.red.cgColor
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedsTapped(_ sender: Any) {
        selectedLeague(leagueType: "coed")
    }
    
    func selectedLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isHidden = false
        nextBtn.isEnabled = true
        
        if (leagueType == "mens") {
            mensBtn.layer.borderColor = UIColor.red.cgColor
            womensBtn.layer.borderColor = UIColor.white.cgColor
            coedBtn.layer.borderColor = UIColor.white.cgColor
            
        } else if (leagueType == "womens") {
            mensBtn.layer.borderColor = UIColor.white.cgColor
            womensBtn.layer.borderColor = UIColor.red.cgColor
            coedBtn.layer.borderColor = UIColor.white.cgColor
            
        } else {
            mensBtn.layer.borderColor = UIColor.white.cgColor
            womensBtn.layer.borderColor = UIColor.white.cgColor
            coedBtn.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC =  segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
