//
//  GameScene.swift
//  Pachinko.Project11
//
//  Created by User on 4/8/16.
//  Copyright (c) 2016 Elijah Buters. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        let background = SKSpriteNode(imageNamed: "background.jpg")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .Replace
        background.zPosition = -1
        addChild(background)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        if let touch = touches.first {
            let location = touch.locationInNode(self)
            let box = SKSpriteNode(color: UIColor.redColor(), size: CGSize(width: 64, height: 64))
            box.position = location
            addChild(box)

        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
