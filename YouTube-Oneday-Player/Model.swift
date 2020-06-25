//
//  Model.swift
//  YouTube-Oneday-Player
//
//  Created by Kiran Morais on 25/06/20.
//  Copyright © 2020 Heartinz. All rights reserved.
//

import Foundation

class Model {
    func getVideos(){
        
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
        
            
            if error != nil || data == nil {
                return
            }
            
        }
        
        dataTask.resume()
        
        
        }
}

