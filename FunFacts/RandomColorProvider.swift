//
//  RandomColorProvider.swift
//  FunFacts
//
//  Created by Bryan Finlayson on 12/31/16.
//  Copyright © 2016 Bryan Finlayson. All rights reserved.
//

import UIKit
import GameKit

struct RandomColorProvider {
    let colors = [
        UIColor(red: 84/255.0, green: 20/255.0, blue: 40/255.0, alpha: 1.0),
        UIColor(red: 20/255.0, green: 80/255.0, blue: 150/255.0, alpha: 1.0),
        UIColor(red: 150/255.0, green: 200/255.0, blue: 20/255.0, alpha: 1.0),
        UIColor(red: 230/255.0, green: 70/255.0, blue: 10/255.0, alpha: 1.0),
        UIColor(red: 4/255.0, green: 3/255.0, blue: 50/255.0, alpha: 1.0),
        UIColor.blue,
        UIColor.brown,
        UIColor.cyan,
        UIColor.green,
        UIColor.orange,
        UIColor.red,
        UIColor.yellow
    ]
    
    func randomColor() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNumber]
    }
}
