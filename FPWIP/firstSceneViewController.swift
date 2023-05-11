//
//  firstSceneViewController.swift
//  FPWIP
//
//  Created by Cole Perry on 3/29/23.
//

import UIKit
import AVFoundation

class firstSceneViewController: UIViewController {
    
    
    var go = 0
    
    var mcount = 0
    let myNewView = UIView(frame: CGRect(x: 10, y: 100, width: 100, height: 100))
    
    var timer = Timer()
    var player: AVAudioPlayer?



    @IBOutlet weak var nextbtOUt: UIButton!
    @IBOutlet weak var gameimage: UIImageView!
    @IBOutlet weak var instruImage: UIImageView!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var coinCount: UILabel!
    
    @IBOutlet weak var instView: UIView!
    var gameCounter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        player?.pause()
        makeUIView()
        loadGame()
        nextbtOUt.isHidden = true
        
    }
  
    @IBAction func nextGameButton(_ sender: UIButton) {
    
    }
    
    func loadGame(){
        gameimage.image = UIImage(named: "\(allgames[currentLevel].gameDisplay)")
        gameLabel.text = allgames[currentLevel].gameName
        coinCount.text = "\(allgames[currentLevel].score)"
        instruImage.image = UIImage(named: "\(allgames[currentLevel].instrumentUsed)")
        playsoundmp3(SongName: "\(allgames[currentLevel].music)")

        if allgames[currentLevel].score >= 2000 {
            gameimage.image = UIImage(named: "\(allgames[currentLevel].hardmodePic)")
            playsoundmp3(SongName: "\(allgames[currentLevel].hardModeMusic)")

        }
           
//        gameimage.image = UIImage(named: allgames[gameCounter].gameDisplay)
//        gameLabel.text = allgames[gameCounter].gameName
//        coinCount.text = "\(allgames[gameCounter].score)"
//        instruImage.image = UIImage(named: allgames[gameCounter].instrumentUsed)
//
    }
    
    @IBAction func instPanGest(_ sender: UIPanGestureRecognizer) {
        
        checkCollide()
        let translation = sender.translation(in: self.view)
        if let viewToDrag = sender.view {
            viewToDrag.center = CGPoint(x: viewToDrag.center.x + translation.x,
                                        y:  viewToDrag.center.y + translation.y)
            sender.setTranslation(CGPoint(x: 0, y: 0), in: viewToDrag)
        }

    }
    
    
    func randoMove(whatView: UIView){
        whatView.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now() + allgames[currentLevel].noteDelay - 0.5 ) {
            whatView.isHidden = false
            // change to an array that the postion will toggle through multple locations
            //        let xR = CGFloat.random(in: -25.0...390.0)
            //        let yR = CGFloat.random(in: 0...880.0)
            //        let xR = MusicPoints[mcounter]
            //        whatView.frame.origin.y = yR
            //        whatView.frame.origin.x = xR
            whatView.frame.origin.x = allgames[currentLevel].noteSpacing[self.mcount].x
            whatView.frame.origin.y = allgames[currentLevel].noteSpacing[self.mcount].y
        }
//        print(mcount)

        mcount += 1
        if mcount == 3 {
            mcount = 0
        }
    }
    
    func checkCollide(){
        checkForFinal()
        if allgames[currentLevel].score >= 2000 && allgames[currentLevel].ishardMode == false{
            allgames[currentLevel].ishardMode = true
            gameimage.image = UIImage(named: "\(allgames[currentLevel].hardmodePic)")
            playsoundmp3(SongName: "Gtransition")
            DispatchQueue.main.asyncAfter(deadline: .now() + 5 ) {
                self.playsoundmp3(SongName: "\(allgames[currentLevel].hardModeMusic)")

            }
        }
        
            if myNewView.frame.intersects(myNewView.convert(instView.frame, from: instView)){
                go += 1
//                print(go)
//                print("colide")
                randoMove(whatView: myNewView)
                
                //            allgames[IndexPath.row].score += 1
                // move to new random location
                //            DispatchQueue.main.asyncAfter(deadline: .now() + randelay ) { [self] in
                //                randoMove(whatView: myNewView)
                //            }
                allgames[currentLevel].score += 10
                coinCount.text = "\(allgames[currentLevel].score)"
                
                if player?.isPlaying == false {
                    player?.play()
                    DispatchQueue.main.asyncAfter(deadline: .now() + allgames[currentLevel].noteDelay ) {
                        self.player?.pause()
                    }
                }
            }
            //            timer.invalidate() // kills the past timer so it can be restarted
            //
            //            if player?.isPlaying == true{
            //                player?.stop()
            //                player?.currentTime = 0
            //                player?.play()
            //            }else {
            //                player?.play()
            //            }
            //
            
        
        }
    func makeUIView(){
        myNewView.backgroundColor = .cyan
        myNewView.layer.cornerRadius = 90
        myNewView.layer.borderWidth = 2
        myNewView.layer.opacity = 0.5
        myNewView.layer.borderColor = UIColor.red.cgColor
        self.view.addSubview(myNewView)
    }
    func playsoundmp3(SongName: String){
        let path = Bundle.main.path(forResource: SongName, ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        print(SongName)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
//            meepleMove?.numberOfLoops
        } catch {
            print("Sound error")
        }
    }
    func checkForFinal(){
        if game1.score >= 2000 && game2.score >= 2000 {
            nextbtOUt.isHidden = false
        }
    }
}
    



