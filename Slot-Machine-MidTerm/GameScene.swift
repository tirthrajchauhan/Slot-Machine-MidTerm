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
    var spinImage1node:SKSpriteNode!
    var spinImage2node:SKSpriteNode!
    var spinImage3node:SKSpriteNode!
    var textures = [SKTexture]()

    override func didMove(to view: SKView) {
     
   
        
        // add the background to scene
        backgroundbg = Background()
        backgroundbg?.size=self.frame.size
        addChild(backgroundbg!)
        
        // add spinbutton to scene
     
        spinButton = SpinButton()
        spinButton?.position = CGPoint(x: 0.0, y: -500.0)
        spinButton?.name = "spinButton"
        addChild(spinButton!)
        
        // add reset to scene
        
        reset = Reset()
        reset?.position = CGPoint(x: 200.0, y: -500.0)
        addChild(reset!)
        
        // add quit to scene
        
        quit = Quit()
        quit?.position = CGPoint(x: -200.0, y: -500.0)
        addChild(quit!)
        
        textures.append(SKTexture(imageNamed: "Cherry"))
        
        textures.append(SKTexture(imageNamed: "Apple"))
        
        textures.append(SKTexture(imageNamed: "Grape"))
        
        textures.append(SKTexture(imageNamed: "Kiwi"))
        
        textures.append(SKTexture(imageNamed: "Lemon"))
        
        textures.append(SKTexture(imageNamed: "Banana"))
        
        spinImage1node = self.childNode(withName: "spinImage1") as? SKSpriteNode
        spinImage2node = self.childNode(withName: "spinImage2") as? SKSpriteNode
        spinImage3node = self.childNode(withName: "spinImage3") as? SKSpriteNode
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
             let nodesArray = self.nodes(at: location)
             if nodesArray.first?.name == "spinButton"{
                let rand = Int(arc4random_uniform(UInt32(textures.count)))
            
                let rand2 = Int(arc4random_uniform(UInt32(textures.count)))
                
                let rand3 = Int(arc4random_uniform(UInt32(textures.count)))
                
                let texture = textures[rand] as SKTexture
                
                let texture2 = textures[rand2] as SKTexture
                
                let texture3 = textures[rand3] as SKTexture
                
                spinImage1node.texture = texture
                
                spinImage2node.texture = texture2
                
                spinImage3node.texture = texture3
                
      }
            
        }
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
