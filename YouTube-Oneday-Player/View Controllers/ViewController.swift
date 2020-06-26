//
//  ViewController.swift
//  YouTube-Oneday-Player
//
//  Created by Kiran Morais on 24/06/20.
//  Copyright © 2020 Heartinz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
   
    
    
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    
    
    
    
    
    var model = Model()
    
    var videos = [Video]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableview.dataSource = self
        tableview.delegate = self
        
        model.delegate = self
        
        model.getVideos()
        
        
        
        
        
        
    }
    
    //MARK: -Model Delegate Methods
    
    func videosFetched(_ videos: [Video]) {
        
        self.videos = videos
        
        tableview.reloadData()
   
    }
    
    
    
    

    // MARK: - TableView Methods
    
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as! VideoTableViewCell
        
        
        let video = self.videos[indexPath.row]
        
        cell.setcell(video)
        
        
        return cell
        
       }
    
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       }
    
    
    }
    



