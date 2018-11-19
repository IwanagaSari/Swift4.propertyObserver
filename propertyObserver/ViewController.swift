//
//  ViewController.swift
//  propertyObserver
//
//  Created by 岩永 彩里 on 2018/11/19.
//  Copyright © 2018年 岩永 彩里. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    class Player {
        var times = 0
        
        var level:Int {
            willSet {
                print("--------------")
                print("willSet\(newValue)")
            }
            didSet {
                if oldValue != level {
                    times += 1
                    print("\(times)回目の更新")
                    print("\(oldValue)→\(level)")
                } else {
                    print("値は変化なし")
                }
            }
        }
        
        init() {
            level = 0
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let thePlayer = Player()
        thePlayer.level = 10
        thePlayer.level = 10
        thePlayer.level = 15
    }


}

