//
//  ViewController.swift
//  FunFacts
//
//  Created by Bryan Finlayson on 12/24/16.
//  Copyright © 2016 Bryan Finlayson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let randomColorProvider = RandomColorProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        let randomColor = randomColorProvider.randomColor()
        self.view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }

}

