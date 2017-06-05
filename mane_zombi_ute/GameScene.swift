//
//  GameScene.swift
//  mane_zombi_ute
//
//  Created by nishi kosei on 2017/05/30.
//  Copyright © 2017年 nishi kosei. All rights reserved.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    
    var player = SKSpriteNode(imageNamed: "namakemono_front")
    
    var makura_left = SKSpriteNode(imageNamed: "makura")
    var makura_center = SKSpriteNode(imageNamed: "makura")
    var makura_right = SKSpriteNode(imageNamed: "makura")
    
    
    override func didMove(to view: SKView) {
        
 
        self.backgroundColor = SKColor.green
        
        player.position = CGPoint(x: 0.0, y:size.height/3)
        //skspritenodeの大きさを倍にする
        player.setScale(3)
        
        makura_left.position = CGPoint(x: -size.width/3, y:-size.height/3)
        makura_left.setScale(6)
        makura_center.position = CGPoint(x: 0.0, y:-size.height/3)
        makura_center.setScale(6)
        makura_right.position = CGPoint(x: size.width/3, y:-size.height/3)
        makura_right.setScale(6)

        //self.addChild(backNode)
        self.addChild(player)
        self.addChild(makura_left)
        self.addChild(makura_center)
        self.addChild(makura_right)
    }
    
    
    
    
    
}
