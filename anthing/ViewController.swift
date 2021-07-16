//
//  ViewController.swift
//  anthing
//
//  Created by Ahmed on 7/15/21.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    var randomImage : Int = 0
    var backgroundImage: Int = 0;
    
    let imageArray = ["1","2","3","4","5","6","7"]
    

    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var BackImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateImage() {
        randomImage = Int(arc4random_uniform(6))
        Image.image = UIImage(named: imageArray[randomImage])
        
        backgroundImage = Int(arc4random_uniform(6))
        BackImage.image = UIImage(named: imageArray[backgroundImage])
       
    }
    
   
    @IBAction func TAP(_ sender: Any) {
        updateImage()
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImage()
    }
    
    }
    

    
    

