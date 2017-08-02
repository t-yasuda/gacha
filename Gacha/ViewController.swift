//
//  ViewController.swift
//  Gacha
//
//  Created by nttr on 2017/07/13.
//  Copyright © 2017年 nttr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"h_color.png")!)
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func makeRandomNumber(){
        number = Int(arc4random_uniform(100))
        label.text = String(number)
    }


}

