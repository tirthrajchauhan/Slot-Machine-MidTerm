//
//  Background.swift
//  Slot-Machine-MidTerm
//
//  Created by Tirthraj Chauhan on 2019-02-21.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import SpriteKit
import GameplayKit


class Background : GameObject {
    // Initializers
    init() {
        // initialize the object with an image
        super.init(imageString: "background", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    
}
