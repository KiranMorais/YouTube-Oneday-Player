//
//  Response.swift
//  YouTube-Oneday-Player
//
//  Created by Kiran Morais on 26/06/20.
//  Copyright © 2020 Heartinz. All rights reserved.
//

import Foundation


struct Response: Decodable {
    
    var items: [Video]?
    
    
    enum CodingKeys:String, CodingKey {
        
        case items
        
    }
        
        init (from decoder: Decoder) throws {
            
           let container = try decoder.container(keyedBy: CodingKeys.self)
            
            self.items = try container.decode([Video].self, forKey: .items)

            
        
    }
}
