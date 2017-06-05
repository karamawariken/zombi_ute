//
//  TitleScene.swift
//  mane_zombi_ute
//
//  Created by nishi kosei on 2017/05/30.
//  Copyright © 2017年 nishi kosei. All rights reserved.
//

import Foundation
import SpriteKit


class TitleScene: SKScene{
    override func didMove(to view: SKView){
        let myLabel = SKLabelNode(fontNamed: "Chalkduster")
        myLabel.text = "スタート画面"
        myLabel.fontSize = 100
        myLabel.position = CGPoint(x:self.frame.midX, y:self.frame.midY)
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func update(_ currentTime: CFTimeInterval){
        
    }
}
