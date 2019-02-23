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
        reset?.name = "reset"
        addChild(reset!)
        
        // add quit to scene
        
        quit = Quit()
        quit?.position = CGPoint(x: -200.0, y: -500.0)
        quit?.name = "quit"
        addChild(quit!)
        
//        // Label Config and adding to the scene
//        Credit.CreditLabel.position.x = -screenSize.width + 130.0
//        Credit.CreditLabel.position.y = screenSize.height + 55.0
//
//        Credit.CreditLabel.fontColor = UIColor.black
//        Credit.CreditLabel.fontSize = 48.0
//        Credit.CreditLabel.zPosition = 5
//        Credit.CreditLabel.fontName = "Arial Bold"
//        Credit.Credit = 5
//
//
//        addChild(Credit.CreditLabel)
//
//        Credit.BetLabel.position.x = screenSize.width  - 110.0
//        Credit.BetLabel.position.y = screenSize.height + 55.0
//
//        Credit.BetLabel.fontColor = UIColor.black
//        Credit.BetLabel.fontSize = 48.0
//        Credit.BetLabel.zPosition = 5
//        Credit.BetLabel.fontName = "Arial Bold"
//        Credit.Bet = 0
//
//
//        addChild(Credit.BetLabel)
//
//        Credit.WinningLabel.position.x = screenSize.width - 170.0
//        Credit.WinningLabel.position.y = screenSize.height + 55.0
//
//        Credit.WinningLabel.fontColor = UIColor.black
//        Credit.WinningLabel.fontSize = 48.0
//        Credit.WinningLabel.zPosition = 5
//        Credit.WinningLabel.fontName = "Arial Bold"
//        Credit.Bet = 0
//
//
//        addChild(Credit.WinningLabel)
//
        
        // Label Config and adding to the scene
        Credit.BetLabel.position.x = 0
        Credit.BetLabel.position.y = -330
        
        Credit.BetLabel.fontColor = UIColor.yellow
        Credit.BetLabel.fontSize = 40.0
        Credit.BetLabel.zPosition = 3
        Credit.BetLabel.fontName = "Arial Bold"
        Credit.Bet = 1
        
        Credit.BetLabel.name = "bet"

        addChild(Credit.BetLabel)
        
        Credit.CreditsLabel.position.x = -180
        Credit.CreditsLabel.position.y = -330
        
        Credit.CreditsLabel.fontColor = UIColor.yellow
        Credit.CreditsLabel.fontSize = 40.0
        Credit.CreditsLabel.zPosition = 3
        Credit.CreditsLabel.fontName = "Arial Bold"
        Credit.Credit = 100
        
        Credit.CreditsLabel.name = "credit"

        addChild(Credit.CreditsLabel)
        
        Credit.WinLabel.position.x = 180
        Credit.WinLabel.position.y = -330
        
        Credit.WinLabel.fontColor = UIColor.yellow
        Credit.WinLabel.fontSize = 40.0
        Credit.WinLabel.zPosition = 3
        Credit.WinLabel.fontName = "Arial Bold"
        Credit.Win = 0
        Credit.WinLabel.name = "win"

        
        addChild(Credit.WinLabel)
        
        Credit.UserLabel.position.x = 0
        Credit.UserLabel.position.y = 460
        
        Credit.UserLabel.fontColor = UIColor.yellow
        Credit.UserLabel.fontSize = 40.0
        Credit.UserLabel.zPosition = 3
        Credit.UserLabel.fontName = "Arial Bold"
        Credit.UserLabel.name = "user"

        
        
        addChild(Credit.UserLabel)
        
        
        Credit.PlusLabel.position.x = -20
        Credit.PlusLabel.position.y = -420
        
        Credit.PlusLabel.fontColor = UIColor.black
        Credit.PlusLabel.fontSize = 50.0
        Credit.PlusLabel.zPosition = 3
        Credit.PlusLabel.fontName = "Arial Bold"
        Credit.PlusLabel.name = "PlusLabel"
        
        Credit.PlusLabel.name = "plus"

        addChild(Credit.PlusLabel)
        
        Credit.MinusLabel.position.x = 20
        Credit.MinusLabel.position.y = -420
        
        Credit.MinusLabel.fontColor = UIColor.black
        Credit.MinusLabel.fontSize = 50.0
        Credit.MinusLabel.zPosition = 3
        Credit.MinusLabel.fontName = "Arial Bold"
        Credit.MinusLabel.name = "MinusLabel"
        Credit.MinusLabel.name = "minus"

        addChild(Credit.MinusLabel)
        
        
        
        
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
                
                if (spinImage1node.texture == spinImage2node.texture && spinImage2node.texture == spinImage3node.texture){
                  
                    Credit.User = "You Won"
                    Credit.Win = 10 * Credit.Credit
                    Credit.Credit = 10 * Credit.Credit
                }
                else
                {
                    Credit.User = "You Lose"
                    Credit.Win = 0
                }
                
                if(Credit.Bet > 0 && Credit.Credit > 0){
                    Credit.Credit = Credit.Credit - Credit.Bet
                }
      }
            else if nodesArray.first?.name == "quit"{
            exit(0)
            }
            
            else if nodesArray.first?.name  == "reset" {
                // Call the function here.
                Credit.Bet = 1
                Credit.Credit = 100
                Credit.Win = 0
                Credit.User = ""
                
            }
            else if nodesArray.first?.name  == "plus" {
                // Call the function here.
                if(Credit.Bet<Credit.Credit)    {
                    Credit.Bet = Credit.Bet + 1
                }
            }
                
            else if nodesArray.first?.name == "minus" {
                // Call the function here.
                if(Credit.Bet>1)    {
                    Credit.Bet = Credit.Bet - 1
                }
            }
            
        }
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
