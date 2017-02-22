//
//  ViewController.swift
//  UIkitPractice
//
//  Created by 黃毓皓 on 2017/2/22.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var NowPicNumber = 1
    
    var array1 = [2,3]
    var array2 = [1,3]
    var array3 = [1,2]

    @IBOutlet weak var pic1: UIButton!
    @IBOutlet weak var pic2: UIButton!
    @IBOutlet weak var pic3: UIButton!
    
     let myRatImage = UIImage(named: "地鼠.jpeg")
    let myGroundImage = UIImage(named: "土地.jpeg")
    
    @IBAction func start(_ sender: UIButton) {
        var gameTimer = Timer()
        
        gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(createRandom), userInfo: nil, repeats: true)
    }
    
    @IBAction func button1(_ sender: Any) {
        pic1.setBackgroundImage(myGroundImage, for: .normal)
    }
    
    @IBAction func button2(_ sender: Any) {
        pic2.setBackgroundImage(myGroundImage, for: .normal)
    }
    
    @IBAction func button3(_ sender: Any) {
        pic3.setBackgroundImage(myGroundImage, for: .normal)
    }
    
    
    
    func createRandom(){
        switch NowPicNumber {
        case 1:

            let myRandom = Int(arc4random_uniform(2))
            
            
            if array1[myRandom] == 2 {
            NowPicNumber = 2
            pic2.setBackgroundImage(myRatImage, for: .normal)
            print("2")
            
            }else if array1[myRandom] == 3{
                print("3")
                pic3.setBackgroundImage(myRatImage, for: .normal)
                NowPicNumber = 3
            }
            
            
        case 2:
        let myRandom = Int(arc4random_uniform(2))
      
        if array2[myRandom] == 1 {
            
            print("1")
            NowPicNumber = 1
            pic1.setBackgroundImage(myRatImage, for: .normal)
            
        }else if array2[myRandom] == 3{
            print("3")
            pic3.setBackgroundImage(myRatImage, for: .normal)
            NowPicNumber = 3
            }
          
        case 3:
            
        let myRandom = Int(arc4random_uniform(2))
        
        if array3[myRandom] == 1 {
            
            print("1")
            NowPicNumber = 1
            pic1.setBackgroundImage(myRatImage, for: .normal)
            
            
        }else if array3[myRandom] == 2{
            print("2")
            pic2.setBackgroundImage(myRatImage, for: .normal)
            NowPicNumber = 2
            }
            
            
        default:
            break
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

