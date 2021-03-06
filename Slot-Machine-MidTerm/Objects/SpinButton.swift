//
//  SpinButton.swift
//  Slot-Machine-MidTerm
//
//  Created by Tirthraj Chauhan on 2019-02-21.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//
import SpriteKit
import GameplayKit

class SpinButton : GameObject {
    
    init() {
        super.init(imageString: "spinButton", initialScale: 2.0)
        self.Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        self.zPosition = 2
    }
    
}
