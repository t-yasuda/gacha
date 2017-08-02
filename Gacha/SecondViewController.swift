//
//  SecondViewController.swift
//  Gacha
//
//  Created by nttr on 2017/07/13.
//  Copyright © 2017年 nttr. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var gachaArray: [String] = ["","","","","","","","","",""]
    var file_name: String = ""
    var rand: Int = 0
    
    @IBOutlet var photoImageView0: UIImageView!
    @IBOutlet var photoImageView1: UIImageView!
    @IBOutlet var photoImageView2: UIImageView!
    @IBOutlet var photoImageView3: UIImageView!
    @IBOutlet var photoImageView4: UIImageView!
    @IBOutlet var photoImageView5: UIImageView!
    @IBOutlet var photoImageView6: UIImageView!
    @IBOutlet var photoImageView7: UIImageView!
    @IBOutlet var photoImageView8: UIImageView!
    @IBOutlet var photoImageView9: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"h_color.png")!)
        gacha()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gacha(){
        for i in 0..<10{
            rand = Int(arc4random_uniform(100))
            if i < 9{
                if rand < 85{
                    file_name = "r.png"
                } else if rand < 97{
                    file_name = "sr.png"
                } else if rand < 100{
                    file_name = "ssr.png"
                }
            } else {
                if rand < 97{
                    file_name = "sr.png"
                } else if rand < 100{
                    file_name = "ssr.png"
                }
            }
            gachaArray[i] = file_name
        }
        photoImageView0.image = UIImage(named: gachaArray[0])
        photoImageView1.image = UIImage(named: gachaArray[1])
        photoImageView2.image = UIImage(named: gachaArray[2])
        photoImageView3.image = UIImage(named: gachaArray[3])
        photoImageView4.image = UIImage(named: gachaArray[4])
        photoImageView5.image = UIImage(named: gachaArray[5])
        photoImageView6.image = UIImage(named: gachaArray[6])
        photoImageView7.image = UIImage(named: gachaArray[7])
        photoImageView8.image = UIImage(named: gachaArray[8])
        photoImageView9.image = UIImage(named: gachaArray[9])
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
