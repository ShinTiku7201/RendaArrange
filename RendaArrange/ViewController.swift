//
//  ViewController.swift
//  RendaArrange
//
//  Created by 柘植紳太郎 on 2023/11/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var countLabel: UILabel!
    
    var tapCount: Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap() {
        
        tapCount = tapCount - 1
        
        countLabel.text = String(tapCount)
        
        if tapCount == 0 {
            countLabel.text = "われたよ！"
            imageView.image = UIImage(named: "unicorn")
       
        } else if tapCount <= 30 {
            imageView.image = UIImage(named:"egg2")
        } else if tapCount <= 50 {
            imageView.image = UIImage(named:"egg1")
        } else {
            imageView.image = UIImage(named:"egg")
            
            
        }
    }


}

