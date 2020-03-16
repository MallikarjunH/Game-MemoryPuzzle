//
//  ViewController.swift
//  Game-MemoryPuzzle
//
//  Created by Mallikarjun on 15/03/20.
//  Copyright © 2020 ADDA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var wonLabel: UILabel!
    
    var gameMode: Int = 4
    var tileSize:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func makeTiles(){
        
        tileSize = gameView.frame.size.width / CGFloat(gameMode)
        
        let tileCGSize = CGSize(width: tileSize - 5, height: tileSize - 5)
        
        var xCenter = tileSize / 2.0
        let yCenter = tileSize / 2.0
        
        for horizontal in 0..<gameMode {
           
            let tile = UILabel(frame: CGRect(origin: CGPoint.zero, size: tileCGSize))
            
            let tileCen = CGPoint(x:xCenter , y: yCenter)
            
            tile.center = tileCen
            xCenter += tileSize
            
            tile.backgroundColor = UIColor.darkGray
            gameView.addSubview(tile)
        }
        
     }

    @IBAction func resetGameAction(_ sender: Any) {
    }
    
    @IBAction func gameModeAction(_ sender: Any) {
    }
}

