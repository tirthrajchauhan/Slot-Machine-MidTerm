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
    
    var spinButton: SpinButton?
    var backgroundbg: Background?
    var reset: Reset?
    var quit: Quit?

    override func didMove(to view: SKView) {
     
   
        
        // add the background to scene
        backgroundbg = Background()
        backgroundbg?.size=self.frame.size
        addChild(backgroundbg!)
        
        // add spinbutton to scene
     
        spinButton = SpinButton()
        spinButton?.position = CGPoint(x: 0.0, y: -500.0)
        addChild(spinButton!)
        
        // add reset to scene
        
        reset = Reset()
        reset?.position = CGPoint(x: 200.0, y: -500.0)
        addChild(reset!)
        
        // add quit to scene
        
        quit = Quit()
        quit?.position = CGPoint(x: -200.0, y: -500.0)
        addChild(quit!)
    }
    
    
  
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
