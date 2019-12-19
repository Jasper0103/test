//
//  ViewController.swift
//  mygame
//
//  Created by Jasper on 2019/12/16.
//  Copyright © 2019 Jasper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     
     @IBOutlet weak var leftimageview: UIImageView!
     
     @IBOutlet weak var rightimageview: UIImageView!
     
     @IBOutlet weak var LeftScoreLabel: UILabel!
     
     @IBOutlet weak var RightScoreLabel: UILabel!
     
     var leftScore = 0
     var rightScore = 0
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
    
         
     
     
     }

     
     @IBAction func Dealtapped(_ sender: Any) {
         //隨機數字
         let leftNumber = Int.random(in: 2...14)
         let rightNumber = Int.random(in: 2...14)
         
         //上傳卡的號碼
         leftimageview.image = UIImage(named: "card\(leftNumber)")
         
         rightimageview.image = UIImage(named: "card\(rightNumber)")
         //控制誰贏
         if leftNumber > rightNumber {
             
             //left side win
             leftScore += 1
             LeftScoreLabel.text = String(leftScore)
         }
         else if leftNumber < rightNumber{
             
             //right side win
             rightScore += 1
             RightScoreLabel.text = String(rightScore)
             
         }
         else {
             
             //even
             
         }
     }
     
     
     
     
 }


