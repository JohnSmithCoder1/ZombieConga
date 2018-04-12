//
//  MainMenuScene.swift
//  ZombieConga
//
//  Created by Banana Viking on 12/9/17.
//  Copyright © 2017 Banana Viking. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "MainMenu")
        
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        addChild(background)
    }
    
    func sceneTapped() {
        let myScene = GameScene(size: self.size)
        myScene.scaleMode = scaleMode
        let reveal = SKTransition.doorway(withDuration: 1.5)
        self.view?.presentScene(myScene, transition: reveal)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        sceneTapped()
    }
}
