//
//  GameScene.swift
//  Slot-Machine-MidTerm
//
//  Created by Tirthraj Chauhan on 2019-02-21.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene {
    
   var backgroundbg: Background?

    override func didMove(to view: SKView) {
     
   
        
        // add the ocean1 to scene
        backgroundbg = Background()
        backgroundbg?.size=self.frame.size
        addChild(backgroundbg!)
        
    }
    
    
  
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
