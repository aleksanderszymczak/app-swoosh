//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by olos on 05.08.2017.
//  Copyright © 2017 olos. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    var desiredLeague = ""

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    @IBOutlet weak var nextBtn: borderBtn!
    
    
    @IBAction func onMenTApped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
