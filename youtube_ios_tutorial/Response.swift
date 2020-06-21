//
//  Response.swift
//  youtube_ios_tutorial
//
//  Created by Adarsh Ponaka on 6/21/20.
//  Copyright © 2020 Adarsh Ponaka. All rights reserved.
//

import Foundation

struct Response: Decodable{
    
    var items:[Video]?
    
    enum CodingKeys: String, CodingKey{
        
        case items
        
    }
    
    init (from decoder:Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
        
    }
    
}
