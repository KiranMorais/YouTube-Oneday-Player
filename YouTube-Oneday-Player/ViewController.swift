//
//  ViewController.swift
//  YouTube-Oneday-Player
//
//  Created by Kiran Morais on 24/06/20.
//  Copyright © 2020 Heartinz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

