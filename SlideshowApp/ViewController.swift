//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 橋本養子 on 2017/08/21.
//  Copyright © 2017年 kotokotokoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageNames = ["image4.jpg", "image5.jpg", "image6.jpg"]
    
    var imageIndex = 0
    
    
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named: imageNames[imageIndex])
        
 }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func next(_ sender: Any) {
        
        imageIndex += 1
        
        if imageNames.count - 1 < imageIndex {
            imageIndex = 0
        }
        
        imageView.image = UIImage(named: imageNames[imageIndex])
        
    }
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBAction func back(_ sender: Any) {
        
        imageIndex -= 1
        
        if imageIndex < 0 {
            imageIndex = imageNames.count - 1
        }
        
        imageView.image = UIImage(named: imageNames[imageIndex])
    }
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func startStop(_ sender: Any) {

        
        if(timer != nil) {
            //停止する
            timer.invalidate()
            timer = nil;
            
            nextButton.isEnabled = true
            backButton.isEnabled = true
            startStopButton.setTitle("再生", for: .normal)
            
        } else {
            //再生する
             timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            
            nextButton.isEnabled = false
            backButton.isEnabled = false
            startStopButton.setTitle("停止", for: .normal)
            
        }
        

        
        }
    
    func updateTimer() {
        imageIndex += 1
        
        if imageNames.count - 1 < imageIndex {
            imageIndex = 0
        }
        
        imageView.image = UIImage(named: imageNames[imageIndex])
        
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.image = imageView.image!
        
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
    
}




