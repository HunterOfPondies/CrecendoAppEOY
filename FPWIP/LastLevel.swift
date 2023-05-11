//
//  LastLevel.swift
//  FPWIP
//
//  Created by Cole Perry on 5/9/23.
//

import UIKit

class LastLevel: UIViewController {

    
    @IBOutlet weak var kinglyimage: UIImageView!
    
    @IBOutlet weak var kingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kingLabel.text = "Huh?! You're not supposed to be back here"
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.5 ) {
            self.kingLabel.text = "Prepare to be destroyed, THROUGH ROCK"
            self.kinglyimage.image = UIImage(named: "AngryKing")
        }
    }
        
    

    

}
