//
//  LevelViewController.swift
//  FPWIP
//
//  Created by Cole Perry on 4/5/23.
//

import UIKit
var currentLevel = 0
    
//didSet {
//    finalBossView.isHidden = true
//}
//var currentLevel = games(gameName: "", gameDisplay: "", instrumentUsed: "", score: 0)

class LevelViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var finalBossView: UIView!
    

    
    override func viewDidLoad() {
        super.viewDidAppear(true)
        print("appears")
//        if allgames[0].score >= 100 && allgames[1].score >= 100 {
//            print("final level")
//            finalBossView.isHidden = true
//        }

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allgames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! MyCollectionViewCell
//        let levels = allgames[indexPath.row]
        cell.layer.backgroundColor = .init(red: 1.0, green: 0, blue: 0, alpha: 1)
        cell.imageMiniView.image = UIImage(named: "\(allgames[indexPath.row].gameDisplay)")
        cell.labelMiniView.text = "\(allgames[indexPath.row].gameName)"
//        cell.largeContentImage?.images = UIImage(named: <#T##String#>)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        currentLevel = indexPath.row
        performSegue(withIdentifier: "gogo", sender: nil)
        print("-----")
        print(currentLevel)
        print("-----")
        

    }
    
    
    
    


}
