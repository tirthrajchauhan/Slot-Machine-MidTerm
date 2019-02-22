//
//  GameObject.swift
//  Slot-Machine-MidTerm
//
//  Created by Tirthraj Chauhan on 2019-02-21.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import SpriteKit
import GameplayKit

class GameObject : SKSpriteNode, GameProtocol {
    // common GameObject variables
    var width: CGFloat?
    var height: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    var verticalSpeed: CGFloat?
    var horizontalSpeed: CGFloat?
    var randomSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    var image: SKTexture?
    var isColliding: Bool?
    
    
    // Initializers
    init(imageString: String, initialScale: CGFloat) {
        // initialize the GameObject with an image
        image = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: image!, color: color, size: image!.size())
        self.setNewScale(scale: initialScale)
        self.isColliding = false
        randomSource = GKARC4RandomSource()
        self.name = imageString
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // class Functions (methods)
    func Reset() {
        
    }
    
    func CheckBounds() {
        
    }
    
    func Start() {
        
    }
    
    func Update() {
        
    }
    
    func setNewScale(scale:CGFloat) {
        setScale(scale)
        self.scale = scale
        self.width = image!.size().width * self.scale!
        self.height = image!.size().height * self.scale!
        self.halfWidth = self.width! * 0.5
        self.halfHeight = self.height! * 0.5
    }
}
