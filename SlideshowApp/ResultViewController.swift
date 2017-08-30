//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 橋本養子 on 2017/08/21.
//  Copyright © 2017年 kotokotokoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.image = self.image
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
