//
//  SkillVC.swift
//  App-Swoosh
//
//  Created by David E Bratton on 9/27/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Without Let Assigned: \(player.desiredLeague)")
        
        if let thePlayer = player.desiredLeague {
            print ("With Let Assigned: \(thePlayer)")
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
