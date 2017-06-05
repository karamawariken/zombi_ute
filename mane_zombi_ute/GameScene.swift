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
    var test:SKSpriteNode!
    var sprite_move:SKAction!
    
    override func didMove(to view: SKView) {
 
        //背景設定
        self.backgroundColor = SKColor.green
        //枕生成
        makura_left.position = CGPoint(x: -size.width/3, y:-size.height/3)
        makura_left.name = "makura_left"
        makura_left.setScale(6)
        makura_center.position = CGPoint(x: 0.0, y:-size.height/3)
        makura_center.name = "makura_center"
        makura_center.setScale(6)
        makura_right.position = CGPoint(x: size.width/3, y:-size.height/3)
        makura_right.name = "makura_right"
        makura_right.setScale(6)
        self.addChild(makura_left)
        self.addChild(makura_center)
        self.addChild(makura_right)

        
        //ナマケモノ10匹生成
        for i in (0 ..< 8){
            let player_copy = player.copy() as! SKSpriteNode
            player_copy.name = "\(i)"
            player_copy.setScale(3)
            let num = arc4random() % 3
            switch num {
            case 0:
                player_copy.position = CGPoint(x: -size.width/3, y:size.height/2-player_copy.size.height * CGFloat(i))
            case 1:
                player_copy.position = CGPoint(x: 0.0, y:size.height/2-player_copy.size.height * CGFloat(i))
            case 2:
                player_copy.position = CGPoint(x: size.width/3, y:size.height/2-player_copy.size.height * CGFloat(i))
            default:
                player_copy.position = CGPoint(x: -size.width/3, y:size.height/2-player_copy.size.height * CGFloat(i))
            }
            self.addChild(player_copy)
        }
        
        //動き作成
        sprite_move = SKAction .rotate(byAngle: CGFloat(2 * M_PI), duration: 1.0)
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //タップのたびに呼び出す
        if let touch = touches.first as UITouch? {
            let location = (touch ).location(in: self)
            for Node : AnyObject in self.children{
                if (Node.name == "7"){
                    test = Node as! SKSpriteNode
                }
            }
            
            let touchNode = self.nodes(at: location).first
            //タップした枕を取得
            if(touchNode == makura_left && touchNode?.position.x == test.position.x){
                    test.removeFromParent()
            } else if (touchNode == makura_center && touchNode?.position.x == test.position.x){
                    test.removeFromParent()
            } else if(touchNode == makura_right && touchNode?.position.x == test.position.x){
                    test.removeFromParent()
            } else {
                test.run(sprite_move)
            }
            //player.removeFromParent()
        }
    }
    
    
    
    
}
